# This file contains constants and methods that are available for users to use
# in RBI files, so aren't present at runtime.

class Sorbet
  # Identical to `T::Sig`'s `sig` in semantics, but couldn't work at
  # runtime since it doesn't know `self`. Used in `rbi`s that don't `extend
  # T::Sig`.
  def self.sig(*args)
  end
end

class Sorbet::Private::Builder
  include T::Sig

  sig {params(params: T.untyped).returns(Sorbet::Private::Builder)}
  def type_parameters(*params); end

  sig {params(params: T.untyped).returns(Sorbet::Private::Builder)}
  def params(**params); end;

  sig {params(type: T.untyped).returns(Sorbet::Private::Builder)}
  def returns(type); end;

  sig {returns(Sorbet::Private::Builder)}
  def void; end;

  sig {returns(Sorbet::Private::Builder)}
  def generated; end;

  sig {params(arg: T.untyped).returns(Sorbet::Private::Builder)}
  def checked(arg); end;

  sig {params(params: T.untyped).returns(Sorbet::Private::Builder)}
  def soft(**params); end

  sig {returns(Sorbet::Private::Builder)}
  def abstract; end;

  sig {returns(Sorbet::Private::Builder)}
  def override; end;

  sig {returns(Sorbet::Private::Builder)}
  def implementation; end;

  sig {returns(Sorbet::Private::Builder)}
  def overridable; end;
end
