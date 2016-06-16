.class public Lcom/heyzap/internal/FetchRateLimiter;
.super Ljava/lang/Object;
.source "FetchRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/FetchRateLimiter$1;,
        Lcom/heyzap/internal/FetchRateLimiter$Key;
    }
.end annotation


# instance fields
.field lastFetchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/heyzap/internal/FetchRateLimiter$Key;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final sleepPeriodMillis:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/internal/FetchRateLimiter;->lastFetchMap:Ljava/util/Map;

    .line 16
    iput p1, p0, Lcom/heyzap/internal/FetchRateLimiter;->sleepPeriodMillis:I

    .line 17
    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/heyzap/internal/FetchRateLimiter;->lastFetchMap:Ljava/util/Map;

    new-instance v1, Lcom/heyzap/internal/FetchRateLimiter$Key;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/heyzap/internal/FetchRateLimiter$Key;-><init>(Ljava/lang/String;ILcom/heyzap/internal/FetchRateLimiter$1;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public tryAcquire(Ljava/lang/String;I)Z
    .locals 8

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    new-instance v3, Lcom/heyzap/internal/FetchRateLimiter$Key;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p2, v0}, Lcom/heyzap/internal/FetchRateLimiter$Key;-><init>(Ljava/lang/String;ILcom/heyzap/internal/FetchRateLimiter$1;)V

    .line 23
    iget-object v0, p0, Lcom/heyzap/internal/FetchRateLimiter;->lastFetchMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 25
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p0, Lcom/heyzap/internal/FetchRateLimiter;->sleepPeriodMillis:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-lez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/heyzap/internal/FetchRateLimiter;->lastFetchMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    goto :goto_0
.end method
