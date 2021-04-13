#!/bin/bash

set -e

# G is defined in EC_primitive/parameters as u = 16540640123574156134436876038791482806971768689494387082833631921987005038935, y = 20819045374670962167435360035096875258406992893633759881276124905556507972311
# 14119558874979547267292681013829403749538263531988213332332383630804947828745 < int( "0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 1 0 0 1 1 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1",2)
# G multiple by 14119558874979547267292681013829403749538263531988213332332383630804947828745 of the above point:
dx=15426188768614546009110669764256125036659837110196129316512211073986935525848
dy=15337024863912528215388680905061745238599231308771177065630214721650168688797

./zokrates compile -i code/proofOfOwnership.code
./zokrates setup
./zokrates compute-witness -a 0 0 0 1 1 1 1 1 0 0 1 1 0 1 1 1 0 1 1 0 0 0 1 1 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 0 1 1 1 0 0 1 0 1 1 1 1 1 1 1 0 1 0 1 1 0 0 1 0 0 0 1 1 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 0 0 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 0 1 0 0 1 1 1 1 0 1 0 0 0 1 0 1 1 0 1 0 1 1 1 1 1 0 0 1 1 0 0 0 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 0 1 1 1 1 0 1 1 0 1 1 1 0 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 1 0 0 1 1 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 $dx $dy
./zokrates generate-proof
./zokrates export-verifier