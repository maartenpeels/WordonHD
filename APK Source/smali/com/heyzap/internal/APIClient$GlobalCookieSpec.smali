.class Lcom/heyzap/internal/APIClient$GlobalCookieSpec;
.super Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.source "APIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/APIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalCookieSpec"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/internal/APIClient$1;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/heyzap/internal/APIClient$GlobalCookieSpec;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method
