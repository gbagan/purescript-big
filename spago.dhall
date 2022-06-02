{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "big"
, dependencies = [ "maybe", "prelude" ]
, license = "MIT"
, repository = "git://github.com/gbagan/purescript-big.git"
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
