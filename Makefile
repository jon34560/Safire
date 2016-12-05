#
# clang++ -std=c++11 -stdlib=libc++ -Weverything -Isrc src/main.cpp
# 
# 
SRC_PATH=./src
OUT_PATH=./bin
VPATH=${SRC_PATH}
#FILES= ./src/crypto/aes.cpp ./src/main.cpp 
#FILES= ./src/main.cpp ./src/crypto/sha256.cpp ./src/crypto/hmac_sha256.cpp ./src/support/cleanse.cpp ./src/support/lockedpool.cpp  ./src/key.cpp ./src/pubkey.cpp ./src/random.cpp ./src/crypto/sha512.cpp ./src/hash.cpp ./src/crypto/ripemd160.cpp ./src/crypto/hmac_sha512.cpp  ./src/ecdsacrypto.cpp 

FILES= ./src/main.cpp ./src/ecdsacrypto.cpp ./src/wallet.cpp ./src/transaction.cpp  
# ./src/util.cpp ./src/rsacrypto.cpp  
#	./src/wallet/wallet.cpp
SOURCES = $(FILES:%.cpp=$(SRC_PATH)/%.cpp)

CC_LINUX=g++
CC=clang++
#CFLAGS=-Wall -shared
CFLAGS= -I/usr/local/opt/openssl/include -I/usr/local/include -I/usr/local/Cellar/boost/1.62.0/include -I./src/leveldb/include -L/usr/local/opt/openssl/lib -L/usr/local/lib -L./src/leveldb -lssl -lcrypto -lboost_system  -lleveldb -std=c++11 -stdlib=libc++ -Wdeprecated -Wc++98-compat -w 
# -lsecp256k1
CFLAGS_LINUX= -I/usr/local/include  -L/usr/local/lib -lssl -lcrypto -lboost_system -lsecp256k1  -Wdeprecated  -w
# -Weverything  
# -std=gnu99  


all:
	#mkdir -p ${OUT_PATH}
	${CC} ${CFLAGS}  -I${SRC_PATH} ${FILES} -o ${OUT_PATH}/Magnite	


linux:
	${CC_LINUX} ${CFLAGS_LINUX}  -I${SRC_PATH} ${FILES} -o ${OUT_PATH}/Magnite	


# TODO add tests application target to run all unit tests.
