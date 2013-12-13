#!/bin/sh
# Script to package pytsk

DATE=`date +"%Y-%m-%d"`;

rm -f pytsk-*.tgz

PYTSK_SOURCE_FILES="\
    ../pytsk/aff4_errors.h \
    ../pytsk/class.c \
    ../pytsk/class.h \
    ../pytsk/error.c \
    ../pytsk/misc.h \
    ../pytsk/pytsk3.h \
    ../pytsk/tsk3.c \
    ../pytsk/tsk3.h"

TALLOC_SOURCE_FILES="\
    ../pytsk/talloc/LICENSE \
    ../pytsk/talloc/README \
    ../pytsk/talloc/replace.h \
    ../pytsk/talloc/talloc.c \
    ../pytsk/talloc/talloc.h"

SCRIPTS="\
    ../pytsk/class_parser.py \
    ../pytsk/generate_bindings.py \
    ../pytsk/lexer.py \
    ../pytsk/make_dist.sh \
    ../pytsk/run_tests.py \
    ../pytsk/setup.py \
    ../pytsk/tests/*.py"

DATA_FILES="\
    ../pytsk/LICENSE \
    ../pytsk/MANIFEST \
    ../pytsk/MANIFEST.in \
    ../pytsk/README \
    ../pytsk/dpkg \
    ../pytsk/msvscpp \
    ../pytsk/samples \
    ../pytsk/test_data"

FILES="\
    ${PYTSK_SOURCE_FILES} \
    ${TALLOC_SOURCE_FILES} \
    ${SCRIPTS} \
    ${DATA_FILES}"

echo "Creating: pytsk-${DATE}.tgz"
tar zcf pytsk-${DATE}.tgz ${FILES} 2>/dev/null

