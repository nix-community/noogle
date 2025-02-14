#include <common-eval-args.hh>
#include <config-global.hh>
#include <eval-inline.hh>
#include <eval-settings.hh>
#include <eval.hh>
#include <globals.hh>
#include <primops.hh>
#include <string>
#include <value.hh>

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
    auto lambda = value.payload.lambda;
    PosIdx posIdx = lambda.fun->getPos();
    Pos funPos = state.positions[posIdx];
    state.mkPos(attrs.alloc("position"), posIdx);
  }
  // Special case for __functors
  if (value.type() == nAttrs) {
    auto i =
        value.payload.attrs->find(state.symbols.create("__functor"));

    if (i != value.payload.attrs->end()) {
      PosIdx posIdx = value.payload.attrs->pos;
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
      auto primDoc = value.payload.primOp->doc;
      if (primDoc != nullptr) {
        std::string s(primDoc);
        attrs.alloc("content").mkString(s);
      }

      auto args = value.payload.primOp->args;
      auto arity = value.payload.primOp->arity;
      auto experimentalFeature = value.payload.primOp->experimentalFeature;
      auto name = value.payload.primOp->name;
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
      Value *maybePrimop = value.payload.primOpApp.left;
      unsigned int countApplied = 1;
      // Find the primop by traversing left
      while (maybePrimop != nullptr && !maybePrimop->isPrimOp() &&
      maybePrimop->isPrimOpApp()) {
        maybePrimop = maybePrimop->payload.primOpApp.left;
        countApplied++;
      }
      attrs.alloc("countApplied").mkInt(countApplied);
      if (maybePrimop->isPrimOp()) {
        std::string doc = maybePrimop->payload.primOp->doc;
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
