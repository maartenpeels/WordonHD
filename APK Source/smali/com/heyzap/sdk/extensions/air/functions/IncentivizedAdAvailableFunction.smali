.class public Lcom/heyzap/sdk/extensions/air/functions/IncentivizedAdAvailableFunction;
.super Ljava/lang/Object;
.source "IncentivizedAdAvailableFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "IncentivizedAdAvailableFunction"

    sput-object v0, Lcom/heyzap/sdk/extensions/air/functions/IncentivizedAdAvailableFunction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 24
    :cond_0
    invoke-static {}, Lcom/heyzap/sdk/ads/IncentivizedAd;->isAvailable()Ljava/lang/Boolean;

    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v0

    .line 37
    :goto_1
    return-object v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 27
    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/heyzap/sdk/ads/IncentivizedAd;->isAvailable(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-static {v0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->log(Ljava/lang/Throwable;)V

    .line 37
    const/4 v0, 0x0

    goto :goto_1
.end method
