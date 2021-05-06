module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

type Nota = Number

aprobo :: [Nota] -> Bool
aprobo notas = promedio notas >= 6

promedio :: [Nota] -> Number
promedio notas = sum notas / length notas



type CriterioPropina = Number -> Number

data Color = Azul | Rojo | Negro deriving (Eq)

criterioPropinaPayaso :: Color -> CriterioPropina
criterioPropinaPayaso Azul precio = criterioPropinaRecomendada precio
criterioPropinaPayaso Rojo _ = 100
criterioPropinaPayaso Negro _ = 0

-- data Gato = UnGato {
--   nombreGato :: String
-- }

data Persona = UnaPersona {
  nombre :: String
, edad :: Number
, sabeFuncional :: Bool
, criterioPropina :: CriterioPropina
} deriving (Show)

pepe = UnaPersona {
  nombre = "Jose"
, edad = 78
, sabeFuncional = True
, criterioPropina = criterioPropinaRecomendada
}

-- Hacer que una persona cumpla un año
cumplirAnio :: Persona -> Persona
-- cumplirAnio (UnaPersona unNombre unaEdad siSabeFuncional elCriterio) =
--   UnaPersona unNombre (unaEdad + 1) siSabeFuncional elCriterio
cumplirAnio persona = persona { edad = edad persona + 1 }

reencarnar :: Persona -> Persona
reencarnar persona = persona { edad = 0, sabeFuncional = False }

-- ESTO CON STRINGS FALLABA EN EJECUCION
-- AHORA CON COLOR FALLA ANTES
-- dinero :: Number
-- dinero = criterioPropinaPayaso Naranja 200

-- ESTO SIEMPRE FALLÓ ANTES DE EJECUTAR
-- mentira :: Number
-- mentira = criterioPropinaPayaso 200 200


criterioPropinaRecomendada = (* 0.1)


cosasProductivasQueHiceEnLaPandemia :: [String]
cosasProductivasQueHiceEnLaPandemia = []

numeros :: [Number]
numeros = [1,2,3]

numeros' = 1 : [2, 3]

muchosNumeros = numeros ++ numeros'

-- cosas = [1, 'a', True] -- Esto no se puede :(


type NumeroComplejo = (Number, Number)

modulo :: NumeroComplejo -> Number
modulo (real, imaginaria) = sqrt (real^2 + imaginaria^2)

real :: NumeroComplejo -> Number
real = fst

imaginaria :: NumeroComplejo -> Number
imaginaria = snd