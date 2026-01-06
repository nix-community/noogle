#include <nix/cmd/common-eval-args.hh>
#include <nix/expr/eval-inline.hh>
#include <nix/expr/eval-settings.hh>
#include <nix/expr/eval.hh>
#include <nix/expr/primops.hh>
#include <nix/expr/value.hh>
#include <nix/store/globals.hh>
#include <nix/util/config-global.hh>
#include <string>

using namespace nix;

void prim_lambdaMeta(EvalState &state, const PosIdx pos, Value **args,
                     Value &v) {
  Value value = *args[0];
  state.forceFunction(
      value, pos, "while evaluating the first argument to builtins.lambdaMeta");
  //   auto lambda = value.lambda;

  // Init the resulting attribute set
  auto attrs = state.buildBindings(10);
  bool isPrimOp = false;
  if (value.isLambda()) {
    auto lambda = value.lambda();
    PosIdx posIdx = lambda.fun->getPos();
    Pos funPos = state.positions[posIdx];
    state.mkPos(attrs.alloc("position"), posIdx);
  }
  // Special case for __functors
  if (value.type() == nAttrs) {
    auto i =
        value.attrs()->find(state.symbols.create("__functor"));

    if (i != value.attrs()->end()) {
      PosIdx posIdx = value.attrs()->pos;
      Pos funPos = state.positions[posIdx];
      state.mkPos(attrs.alloc("position"), posIdx);
      attrs.alloc("isFunctor").mkBool(true);
    }
  }

    if (value.isPrimOp() || value.isPrimOpApp()) {
      // Primops dont have source position"
      isPrimOp = true;
      attrs.alloc("position").mkNull();
    }

    if (value.isPrimOp()) {
      // Primops should have documentation"
      auto primDoc = value.primOp()->doc;
      if (primDoc != nullptr) {
        std::string s(primDoc);
        attrs.alloc("content").mkString(s);
      }

      auto args = value.primOp()->args;
      auto arity = value.primOp()->arity;
      auto experimentalFeature = value.primOp()->experimentalFeature;
      auto name = value.primOp()->name;
      attrs.alloc("name").mkString(name);

      auto & argsList = attrs.alloc("args");


      auto listBuilder = state.buildList(args.size());

        for (unsigned int n = 0; n < args.size(); ++n){
            std::string arg = args[n];
            (listBuilder[n] = state.allocValue())->mkString(arg);
        }
        argsList.mkList(listBuilder);

      if (!value.isPrimOpApp()) {
          attrs.alloc("countApplied").mkInt(0);
      }
      attrs.alloc("arity").mkInt(NixInt(arity));
      attrs.alloc("experimental").mkBool(experimentalFeature.has_value());
    }

    if (value.isPrimOpApp()) {
      Value *maybePrimop = value.primOpApp().left;
      unsigned int countApplied = 1;
      // Find the primop by traversing left
      while (maybePrimop != nullptr && !maybePrimop->isPrimOp() &&
      maybePrimop->isPrimOpApp()) {
        maybePrimop = maybePrimop->primOpApp().left;
        countApplied++;
      }
      attrs.alloc("countApplied").mkInt(countApplied);
      if (maybePrimop->isPrimOp()) {
        std::string doc = maybePrimop->primOp()->doc;
        attrs.alloc("content").mkString(doc);
      }
    }

  attrs.alloc("isPrimop").mkBool(isPrimOp);
  v.mkAttrs(attrs);
}

static RegisterPrimOp primop_lambdaMeta(PrimOp{
    .name = "__lambdaMeta",
    .args = {"f"},
    .fun = prim_lambdaMeta,
});
