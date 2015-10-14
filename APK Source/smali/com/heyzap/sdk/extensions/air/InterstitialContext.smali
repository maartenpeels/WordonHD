.class public Lcom/heyzap/sdk/extensions/air/InterstitialContext;
.super Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;
.source "InterstitialContext.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "interstitial"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v1, "show"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/ShowInterstitialAdFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/ShowInterstitialAdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "fetch"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/FetchInterstitialAdFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/FetchInterstitialAdFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "available"

    new-instance v2, Lcom/heyzap/sdk/extensions/air/functions/InterstitialAdAvailableFunction;

    invoke-direct {v2}, Lcom/heyzap/sdk/extensions/air/functions/InterstitialAdAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-object v0
.end method
