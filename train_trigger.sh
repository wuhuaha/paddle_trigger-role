cd ./bin/script
HERE=$(readlink -f "$(dirname "$0")")
cd ${HERE}/..
DATA_DIR=${HERE}/../../data
PRETRAIN_MODEL=${HERE}/../../model/ERNIE_1.0_max-len-512
SAVE_MODEL=${HERE}/../../save_model
DICT=${HERE}/../../dict
GPUID=0
TRIGGER_SAVE_MODEL=${SAVE_MODEL}/trigger

sh script/train_event_trigger.sh ${GPUID} ${DATA_DIR} ${TRIGGER_SAVE_MODEL} ${PRETRAIN_MODEL} ${DICT}