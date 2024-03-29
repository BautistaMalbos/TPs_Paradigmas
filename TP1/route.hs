module Route ( Route, newR, inOrderR )
 where

import Data.List
data Route = Rou [ String ] deriving (Eq, Show)

newR :: [ String ] -> Route                    -- construye una ruta segun una lista de ciudades
newR lista | not (null lista) = Rou lista

inOrderR :: Route -> String -> String -> Bool  -- indica si la primer ciudad consultada esta antes que la segunda ciudad en la ruta
inOrderR (Rou lista) stop1 stop2    |not(elem stop1 lista && elem stop2 lista) = False
                                    |elemIndex stop1 lista < elemIndex stop2 lista   = True
                                    |elemIndex stop1 lista > elemIndex stop2 lista   = False
                                    |otherwise = False
                                    --HAY QUE MANEJAR EL RESULTADO POR SI ALGUN DESTINO NO ESTA EN LA RUTA
 