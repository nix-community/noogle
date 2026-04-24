let
  /**Docs*/
  foo = {
    __functor = self: x: self;
  };
in
{ inherit foo; }
