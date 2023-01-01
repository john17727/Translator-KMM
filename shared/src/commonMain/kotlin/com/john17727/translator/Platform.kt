package com.john17727.translator

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform