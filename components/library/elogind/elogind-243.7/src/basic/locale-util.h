/* SPDX-License-Identifier: LGPL-2.1+ */
#pragma once

#include <libintl.h>
#include <stdbool.h>
#include <locale.h>

#include "macro.h"

typedef enum LocaleVariable {
        /* We don't list LC_ALL here on purpose. People should be
         * using LANG instead. */

        VARIABLE_LANG,
        VARIABLE_LANGUAGE,
        VARIABLE_LC_CTYPE,
        VARIABLE_LC_NUMERIC,
        VARIABLE_LC_TIME,
        VARIABLE_LC_COLLATE,
        VARIABLE_LC_MONETARY,
        VARIABLE_LC_MESSAGES,
        VARIABLE_LC_PAPER,
        VARIABLE_LC_NAME,
        VARIABLE_LC_ADDRESS,
        VARIABLE_LC_TELEPHONE,
        VARIABLE_LC_MEASUREMENT,
        VARIABLE_LC_IDENTIFICATION,
        _VARIABLE_LC_MAX,
        _VARIABLE_LC_INVALID = -1
} LocaleVariable;

#if 0 /// UNNEEDED by elogind
int get_locales(char ***l);
bool locale_is_valid(const char *name);
#endif // 0

#define _(String) gettext(String)
#define N_(String) String
#if 0 /// UNNEEDED by elogind
void init_gettext(void);
#endif // 0

bool is_locale_utf8(void);

typedef enum {
        SPECIAL_GLYPH_TREE_VERTICAL,
        SPECIAL_GLYPH_TREE_BRANCH,
        SPECIAL_GLYPH_TREE_RIGHT,
        SPECIAL_GLYPH_TREE_SPACE,
        SPECIAL_GLYPH_TRIANGULAR_BULLET,
        SPECIAL_GLYPH_BLACK_CIRCLE,
        SPECIAL_GLYPH_BULLET,
        SPECIAL_GLYPH_ARROW,
        SPECIAL_GLYPH_MDASH,
        SPECIAL_GLYPH_ELLIPSIS,
        SPECIAL_GLYPH_MU,
        SPECIAL_GLYPH_CHECK_MARK,
        SPECIAL_GLYPH_CROSS_MARK,
        _SPECIAL_GLYPH_FIRST_SMILEY,
        SPECIAL_GLYPH_ECSTATIC_SMILEY = _SPECIAL_GLYPH_FIRST_SMILEY,
        SPECIAL_GLYPH_HAPPY_SMILEY,
        SPECIAL_GLYPH_SLIGHTLY_HAPPY_SMILEY,
        SPECIAL_GLYPH_NEUTRAL_SMILEY,
        SPECIAL_GLYPH_SLIGHTLY_UNHAPPY_SMILEY,
        SPECIAL_GLYPH_UNHAPPY_SMILEY,
        SPECIAL_GLYPH_DEPRESSED_SMILEY,
        _SPECIAL_GLYPH_MAX
} SpecialGlyph;

const char *special_glyph(SpecialGlyph code) _const_;

const char* locale_variable_to_string(LocaleVariable i) _const_;
LocaleVariable locale_variable_from_string(const char *s) _pure_;

static inline void freelocalep(locale_t *p) {
        if (*p == (locale_t) 0)
                return;

        freelocale(*p);
}

#if 0 /// UNNEEDED by elogind
void locale_variables_free(char* l[_VARIABLE_LC_MAX]);
static inline void locale_variables_freep(char*(*l)[_VARIABLE_LC_MAX]) {
        locale_variables_free(*l);
}
#endif // 0
