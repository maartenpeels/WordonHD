.class public Lcom/heyzap/analytics/MetricsTracker;
.super Ljava/lang/Object;
.source "MetricsTracker.java"


# static fields
.field private static enabled:Z

.field private static instance:Lcom/heyzap/analytics/MetricsTracker;


# instance fields
.field private eventCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/heyzap/analytics/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/heyzap/analytics/MetricsTracker;->enabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method private static eventLookup(Lcom/heyzap/analytics/Event;Lcom/heyzap/analytics/Event;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v0, p0, Lcom/heyzap/analytics/Event;->impressionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/analytics/Event;->impressionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/heyzap/analytics/Event;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 163
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/heyzap/analytics/Event;->tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/analytics/Event;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/heyzap/analytics/Event;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v1, p1, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/heyzap/analytics/Event;->network:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/analytics/Event;->network:Ljava/lang/String;

    iget-object v1, p1, Lcom/heyzap/analytics/Event;->network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v1, p1, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findEvent(Lcom/heyzap/analytics/Event;)Lcom/heyzap/analytics/Event;
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/heyzap/analytics/MetricsTracker;->getTracker()Lcom/heyzap/analytics/MetricsTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/analytics/Event;

    .line 168
    invoke-static {v0, p0}, Lcom/heyzap/analytics/MetricsTracker;->eventLookup(Lcom/heyzap/analytics/Event;Lcom/heyzap/analytics/Event;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcom/heyzap/analytics/MetricsTracker;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/heyzap/house/model/AdModel;->event:Lcom/heyzap/analytics/Event;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/heyzap/house/model/AdModel;->event:Lcom/heyzap/analytics/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit v0

    return-object v1

    .line 77
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    .line 78
    iput-object v1, p0, Lcom/heyzap/house/model/AdModel;->event:Lcom/heyzap/analytics/Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEvent(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/analytics/Event;
    .locals 3

    .prologue
    const-string v0, "heyzap"

    .line 59
    const-class v0, Lcom/heyzap/analytics/MetricsTracker;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 60
    :try_start_0
    const-string v1, "heyzap"

    invoke-static {v1}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 68
    :goto_0
    monitor-exit v0

    return-object v1

    .line 62
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getAuctionType()Lcom/heyzap/internal/Constants$AuctionType;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants$AuctionType;->CROSS_PROMO:Lcom/heyzap/internal/Constants$AuctionType;

    if-ne v1, v2, :cond_1

    .line 63
    const-string v1, "heyzap_cross_promo"

    invoke-static {v1}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getCreativeTypes()I

    move-result v1

    sget v2, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:I

    invoke-static {v1, v2}, Lcom/heyzap/internal/Constants$CreativeType;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const-string v1, "heyzap_video"

    invoke-static {v1}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "heyzap"

    invoke-static {v1}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEvent(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 5

    .prologue
    .line 47
    const-class v0, Lcom/heyzap/analytics/MetricsTracker;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/heyzap/analytics/Event;

    invoke-direct {v1}, Lcom/heyzap/analytics/Event;-><init>()V

    invoke-virtual {v1, p0}, Lcom/heyzap/analytics/Event;->network(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/heyzap/analytics/MetricsTracker;->getTracker()Lcom/heyzap/analytics/MetricsTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/analytics/Event;

    .line 49
    invoke-static {p0, v1}, Lcom/heyzap/analytics/MetricsTracker;->eventLookup(Lcom/heyzap/analytics/Event;Lcom/heyzap/analytics/Event;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/heyzap/analytics/Event;->showAd:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/heyzap/analytics/Event;->showAd:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    :cond_1
    move-object v1, p0

    .line 55
    :cond_2
    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTracker()Lcom/heyzap/analytics/MetricsTracker;
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/heyzap/analytics/MetricsTracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heyzap/analytics/MetricsTracker;->instance:Lcom/heyzap/analytics/MetricsTracker;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/heyzap/analytics/MetricsTracker;

    invoke-direct {v1}, Lcom/heyzap/analytics/MetricsTracker;-><init>()V

    sput-object v1, Lcom/heyzap/analytics/MetricsTracker;->instance:Lcom/heyzap/analytics/MetricsTracker;

    .line 38
    :cond_0
    sget-object v1, Lcom/heyzap/analytics/MetricsTracker;->instance:Lcom/heyzap/analytics/MetricsTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized putEvent(Lcom/heyzap/house/model/AdModel;Z)Lcom/heyzap/analytics/Event;
    .locals 3

    .prologue
    .line 83
    const-class v0, Lcom/heyzap/analytics/MetricsTracker;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/analytics/MetricsTracker;->removeEvent(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V

    .line 86
    :cond_0
    new-instance v1, Lcom/heyzap/analytics/Event;

    invoke-direct {v1}, Lcom/heyzap/analytics/Event;-><init>()V

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/analytics/Event;->adUnit(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    invoke-virtual {p0}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/analytics/Event;->tag(Ljava/lang/String;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    invoke-static {v1}, Lcom/heyzap/analytics/MetricsTracker;->findEvent(Lcom/heyzap/analytics/Event;)Lcom/heyzap/analytics/Event;

    move-result-object v1

    if-nez v1, :cond_1

    .line 87
    invoke-static {}, Lcom/heyzap/analytics/MetricsTracker;->getTracker()Lcom/heyzap/analytics/MetricsTracker;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/heyzap/house/model/AdModel;->event:Lcom/heyzap/analytics/Event;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/heyzap/house/model/AdModel;->event:Lcom/heyzap/analytics/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized removeEvent(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 93
    const-class v1, Lcom/heyzap/analytics/MetricsTracker;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/heyzap/analytics/MetricsTracker;->getTracker()Lcom/heyzap/analytics/MetricsTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/analytics/Event;

    .line 94
    iget-object v3, v0, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v3, p0, :cond_0

    iget-object v3, v0, Lcom/heyzap/analytics/Event;->tag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-static {}, Lcom/heyzap/analytics/MetricsTracker;->getTracker()Lcom/heyzap/analytics/MetricsTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sendMetrics()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/analytics/MetricsTracker$1;

    invoke-direct {v1}, Lcom/heyzap/analytics/MetricsTracker$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 0

    .prologue
    .line 43
    sput-boolean p0, Lcom/heyzap/analytics/MetricsTracker;->enabled:Z

    .line 44
    return-void
.end method


# virtual methods
.method public dumpCache()Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 104
    iget-object v1, p0, Lcom/heyzap/analytics/MetricsTracker;->eventCache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 105
    return-object v0
.end method
