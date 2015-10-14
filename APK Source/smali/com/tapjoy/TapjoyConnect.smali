.class public final Lcom/tapjoy/TapjoyConnect;
.super Ljava/lang/Object;
.source "TapjoyConnect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyConnect"

.field private static tapjoyCache:Lcom/tapjoy/TapjoyCache;

.field private static tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

.field private static tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

.field private static tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

.field private static tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

.field private static tapjoyOffers:Lcom/tapjoy/TJCOffers;

.field private static tapjoyPoints:Lcom/tapjoy/TJPoints;

.field private static tapjoyVideo:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    .line 25
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 26
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    .line 27
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    .line 28
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 29
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 30
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyCache:Lcom/tapjoy/TapjoyCache;

    .line 31
    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .param p5, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tapjoy/TapjoyException;
        }
    .end annotation

    .prologue
    .line 155
    .local p4, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    .line 157
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 39
    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 40
    return-void
.end method

.method public static getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;
    .locals 3

    .prologue
    const-string v2, "----------------------------------------"

    const-string v1, "TapjoyConnect"

    .line 134
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "TapjoyConnect"

    const-string v0, "----------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "TapjoyConnect"

    const-string v0, "ERROR -- call requestTapjoyConnect before any other Tapjoy methods"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "TapjoyConnect"

    const-string v0, "----------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;

    return-object v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    return v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z

    move-result v0

    return v0
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p4, "notifier"    # Lcom/tapjoy/TapjoyConnectNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TapjoyConnectNotifier;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;*>;"
    const/4 v7, 0x0

    const-string v8, "TapjoyConnect"

    .line 95
    const-string v0, "event"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    .line 98
    :try_start_0
    new-instance v0, Lcom/tapjoy/TapjoyConnect;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TapjoyConnectNotifier;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyConnectInstance:Lcom/tapjoy/TapjoyConnect;
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    new-instance v0, Lcom/tapjoy/TJCOffers;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    .line 115
    new-instance v0, Lcom/tapjoy/TJPoints;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJPoints;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    .line 116
    new-instance v0, Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyFullScreenAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    .line 117
    new-instance v0, Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyDisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    .line 118
    new-instance v0, Lcom/tapjoy/TapjoyVideo;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 119
    new-instance v0, Lcom/tapjoy/TapjoyCache;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyCache:Lcom/tapjoy/TapjoyCache;

    .line 120
    new-instance v0, Lcom/tapjoy/TapjoyEvent;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyEvent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    .line 122
    invoke-static {p0}, Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V

    .line 124
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 102
    .local v6, "e":Lcom/tapjoy/TapjoyIntegrationException;
    const-string v0, "TapjoyConnect"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntegrationException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p4, :cond_0

    .line 104
    invoke-interface {p4}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    :cond_0
    move v0, v7

    .line 105
    goto :goto_0

    .line 107
    .end local v6    # "e":Lcom/tapjoy/TapjoyIntegrationException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 109
    .local v6, "e":Lcom/tapjoy/TapjoyException;
    const-string v0, "TapjoyConnect"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapjoyException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p4, :cond_1

    .line 111
    invoke-interface {p4}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    :cond_1
    move v0, v7

    .line 112
    goto :goto_0
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public appPause()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appPause()V

    .line 166
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnect;->sendShutDownEvent()V

    .line 167
    return-void
.end method

.method public appResume()V
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appResume()V

    .line 175
    return-void
.end method

.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 350
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJPoints;->awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V

    .line 351
    return-void
.end method

.method public cacheVideos()V
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyVideo;->cacheVideos()V

    .line 514
    return-void
.end method

.method public enableDisplayAdAutoRefresh(Z)V
    .locals 1
    .param p1, "shouldAutoRefresh"    # Z

    .prologue
    .line 431
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->enableAutoRefresh(Z)V

    .line 432
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 1
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->enablePaidAppWithActionID(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    return v0
.end method

.method public getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 471
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 472
    return-void
.end method

.method public getDisplayAd(Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 444
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 445
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "currencyID"    # Ljava/lang/String;
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 485
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 486
    return-void
.end method

.method public getDisplayAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V
    .locals 2
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyDisplayAdNotifier;

    .prologue
    .line 459
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/tapjoy/TapjoyDisplayAd;->getDisplayAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tapjoy/TapjoyDisplayAdNotifier;)V

    .line 460
    return-void
.end method

.method public getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 377
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 378
    return-void
.end method

.method public getFullScreenAdWithCurrencyID(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    .prologue
    .line 391
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAd(Ljava/lang/String;Lcom/tapjoy/TapjoyFullScreenAdNotifier;)V

    .line 392
    return-void
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 328
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPoints;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 329
    return-void
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "price"    # F
    .param p3, "quantity"    # I
    .param p4, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 547
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TapjoyEvent;->sendIAPEvent(Ljava/lang/String;FILjava/lang/String;)V

    .line 548
    return-void
.end method

.method public sendSegmentationParams(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setSegmentationParams(Ljava/util/Hashtable;)V

    .line 557
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 558
    return-void
.end method

.method public sendShutDownEvent()V
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyEvent:Lcom/tapjoy/TapjoyEvent;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyEvent;->sendShutDownEvent()V

    .line 535
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 234
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    .line 235
    return-void
.end method

.method public setDisplayAdSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "dimensions"    # Ljava/lang/String;

    .prologue
    .line 421
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyDisplayAd:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyDisplayAd;->setDisplayAdSize(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 360
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPoints;->setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V

    .line 361
    return-void
.end method

.method public setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyViewNotifier;

    .prologue
    .line 254
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setTapjoyViewNotifier(Lcom/tapjoy/TapjoyViewNotifier;)V

    .line 255
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 501
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoCacheCount(I)V

    .line 502
    return-void
.end method

.method public setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    .line 522
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyVideo;->setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V

    .line 523
    return-void
.end method

.method public showFullScreenAd()V
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyFullScreenAd:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyFullScreenAd;->showFullScreenAd()V

    .line 403
    return-void
.end method

.method public showOffers()V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 285
    return-void
.end method

.method public showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 1
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    .line 305
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 306
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    .line 295
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 296
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 1
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    .line 318
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyOffers:Lcom/tapjoy/TJCOffers;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 319
    return-void
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 339
    sget-object v0, Lcom/tapjoy/TapjoyConnect;->tapjoyPoints:Lcom/tapjoy/TJPoints;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJPoints;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 340
    return-void
.end method
