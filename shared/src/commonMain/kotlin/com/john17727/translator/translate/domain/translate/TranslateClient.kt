package com.john17727.translator.translate.domain.translate

import com.john17727.translator.core.domain.language.Language

interface TranslateClient {
    suspend fun translate(fromLanguage: Language, fromText: String, toLanguage: Language): String
}