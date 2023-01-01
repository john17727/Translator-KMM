package com.john17727.translator.di

import com.john17727.translator.database.TranslateDatabase
import com.john17727.translator.translate.data.history.SqlDelightHistoryDataSource
import com.john17727.translator.translate.data.local.DatabaseDriverFactory
import com.john17727.translator.translate.data.remote.HttpClientFactory
import com.john17727.translator.translate.data.translate.KtorTranslateClient
import com.john17727.translator.translate.domain.history.HistoryDataSource
import com.john17727.translator.translate.domain.translate.Translate
import com.john17727.translator.translate.domain.translate.TranslateClient

class AppModule {

    val historyDataSource: HistoryDataSource by lazy {
        SqlDelightHistoryDataSource(
            TranslateDatabase(
                DatabaseDriverFactory().create()
            )
        )
    }

    private val translateClient: TranslateClient by lazy {
        KtorTranslateClient(
            HttpClientFactory().create()
        )
    }

    val translateUseCase: Translate by lazy {
        Translate(translateClient, historyDataSource)
    }
}