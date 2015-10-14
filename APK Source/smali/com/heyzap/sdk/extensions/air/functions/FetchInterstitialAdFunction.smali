.class public Lcom/heyzap/sdk/extensions/air/functions/FetchInterstitialAdFunction;
.super Ljava/lang/Object;
.source "FetchInterstitialAdFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "FetchInterstitialAdFunction"

    sput-object v0, Lcom/heyzap/sdk/extensions/air/functions/FetchInterstitialAdFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    .prologue
    .line 17
    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 18
    :cond_0
    invoke-static {}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch()V

    .line 28
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 21
    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/heyzap/sdk/ads/InterstitialAd;->fetch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->log(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
