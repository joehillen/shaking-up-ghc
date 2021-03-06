module Settings.Builders.Alex (alexBuilderArgs) where

import Expression
import Predicates (builder)

alexBuilderArgs :: Args
alexBuilderArgs = builder Alex ? mconcat [ arg "-g"
                                         , arg =<< getInput
                                         , arg "-o", arg =<< getOutput ]
