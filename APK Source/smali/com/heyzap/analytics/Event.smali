.class public Lcom/heyzap/analytics/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static adNumber:I = 0x0

.field private static generator:Ljava/util/Random; = null

.field private static randChars:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x79574c7b0c0ac5b5L


# instance fields
.field adClicked:Ljava/lang/Boolean;

.field adClickedTime:Ljava/lang/Long;

.field adRenderTime:Ljava/lang/Long;

.field adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field back:Ljava/lang/Boolean;

.field close:Ljava/lang/Boolean;

.field creativeDownloadEndTime:Ljava/lang/Long;

.field creativeDownloadFailedAmount:Ljava/lang/String;

.field creativeDownloadStartTime:Ljava/lang/Long;

.field creativeHost:Ljava/lang/String;

.field creativePath:Ljava/lang/String;

.field devHide:Ljava/lang/Boolean;

.field private displayLatency:Ljava/lang/Long;

.field fetch:Ljava/lang/Boolean;

.field fetchFailReason:Ljava/lang/String;

.field fetchFinishedTime:Ljava/lang/Long;

.field fetchTime:Ljava/lang/Long;

.field id:Ljava/lang/String;

.field impressionCached:Ljava/lang/Boolean;

.field impressionId:Ljava/lang/String;

.field isAvailibleDownload:Ljava/lang/Integer;

.field isAvailibleResult:Ljava/lang/String;

.field isAvailibleTime:Ljava/lang/Long;

.field marketOpenedTime:Ljava/lang/Long;

.field mobilePromotionId:Ljava/lang/String;

.field network:Ljava/lang/String;

.field networkVersion:Ljava/lang/String;

.field nthAd:Ljava/lang/Integer;

.field ordinal:Ljava/lang/Integer;

.field showAd:Ljava/lang/Boolean;

.field showAdDownload:Ljava/lang/Integer;

.field showAdResult:Ljava/lang/String;

.field showAdTime:Ljava/lang/Long;

.field tag:Ljava/lang/String;

.field videoCached:Ljava/lang/Boolean;

.field videoDownloadEndTime:Ljava/lang/Long;

.field videoDownloadFailed:Ljava/lang/Boolean;

.field videoDownloadStartTime:Ljava/lang/Long;

.field videoSize:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/heyzap/analytics/Event;->adNumber:I

    .line 70
    const-string v0, "abcdefghijklmnopqrstuvwxz1234567890"

    sput-object v0, Lcom/heyzap/analytics/Event;->randChars:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/heyzap/analytics/Event;->generator:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    .line 77
    sget-object v2, Lcom/heyzap/analytics/Event;->randChars:Ljava/lang/String;

    sget-object v3, Lcom/heyzap/analytics/Event;->generator:Ljava/util/Random;

    sget-object v4, Lcom/heyzap/analytics/Event;->randChars:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/heyzap/analytics/Event;->id:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public adClicked(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->adClicked:Ljava/lang/Boolean;

    .line 164
    return-object p0
.end method

.method public adClickedTime(J)Lcom/heyzap/analytics/Event;
    .locals 2

    .prologue
    .line 216
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->adClickedTime:Ljava/lang/Long;

    .line 217
    iget-object v0, p0, Lcom/heyzap/analytics/Event;->impressionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/analytics/Event$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/heyzap/analytics/Event$1;-><init>(Lcom/heyzap/analytics/Event;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 238
    :cond_0
    return-object p0
.end method

.method public adRenderTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 267
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->adRenderTime:Ljava/lang/Long;

    .line 268
    return-object p0
.end method

.method public adUnit(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 194
    return-object p0
.end method

.method public back(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 178
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->back:Ljava/lang/Boolean;

    .line 179
    return-object p0
.end method

.method public close(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->close:Ljava/lang/Boolean;

    .line 169
    return-object p0
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heyzap/analytics/Event;->commit(Z)V

    .line 346
    return-void
.end method

.method public commit(Z)V
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/heyzap/analytics/Event$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/analytics/Event$2;-><init>(Lcom/heyzap/analytics/Event;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public creativeDownloadEndTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 287
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->creativeDownloadEndTime:Ljava/lang/Long;

    .line 288
    return-object p0
.end method

.method public creativeDownloadFailedAmount(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->creativeDownloadFailedAmount:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public creativeDownloadStartTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 282
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->creativeDownloadStartTime:Ljava/lang/Long;

    .line 283
    return-object p0
.end method

.method public creativeHost(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->creativeHost:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public creativePath(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->creativePath:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public devHide(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 173
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->devHide:Ljava/lang/Boolean;

    .line 174
    return-object p0
.end method

.method public displayLatency(Ljava/lang/Long;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->displayLatency:Ljava/lang/Long;

    .line 293
    return-object p0
.end method

.method public fetch(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->fetch:Ljava/lang/Boolean;

    .line 114
    return-object p0
.end method

.method public fetchFailReason(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->fetchFailReason:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public fetchFinishedTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 262
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->fetchFinishedTime:Ljava/lang/Long;

    .line 263
    return-object p0
.end method

.method public fetchTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 257
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    .line 258
    return-object p0
.end method

.method public impressionCached(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->impressionCached:Ljava/lang/Boolean;

    .line 104
    return-object p0
.end method

.method public impressionId(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 204
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->impressionId:Ljava/lang/String;

    .line 207
    :cond_0
    return-object p0
.end method

.method public isAvailibleDownload(I)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->isAvailibleDownload:Ljava/lang/Integer;

    .line 140
    return-object p0
.end method

.method public isAvailibleResult(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->isAvailibleResult:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public isAvailibleTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 247
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->isAvailibleTime:Ljava/lang/Long;

    .line 248
    return-object p0
.end method

.method public marketOpenedTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 242
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->marketOpenedTime:Ljava/lang/Long;

    .line 243
    return-object p0
.end method

.method public mobilePromotionId(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->mobilePromotionId:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public network(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->network:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public networkVersion(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->networkVersion:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public ordinal(Ljava/lang/Integer;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->ordinal:Ljava/lang/Integer;

    .line 94
    return-object p0
.end method

.method public showAd(Z)Lcom/heyzap/analytics/Event;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/heyzap/analytics/Event;->nthAd:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 146
    sget v0, Lcom/heyzap/analytics/Event;->adNumber:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/heyzap/analytics/Event;->adNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->nthAd:Ljava/lang/Integer;

    .line 148
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->showAd:Ljava/lang/Boolean;

    .line 149
    return-object p0
.end method

.method public showAdDownload(I)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->showAdDownload:Ljava/lang/Integer;

    .line 154
    return-object p0
.end method

.method public showAdResult(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->showAdResult:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public showAdTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 252
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->showAdTime:Ljava/lang/Long;

    .line 253
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/heyzap/analytics/Event;
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/heyzap/analytics/Event;->tag:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->fetch:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "fetched"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->fetch:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v7

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    :cond_0
    const-string v1, "reason_fetch_failed"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->fetchFailReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->fetchFinishedTime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 355
    const-string v1, "fetch_download_time"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->fetchFinishedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->videoDownloadStartTime:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->videoDownloadEndTime:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 358
    const-string v1, "video_download_time"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->videoDownloadEndTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->videoDownloadStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->creativeDownloadStartTime:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->creativeDownloadEndTime:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 361
    const-string v1, "creative_download_time"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->creativeDownloadEndTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->creativeDownloadStartTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 363
    :cond_3
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->videoDownloadFailed:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 364
    const-string v1, "video_download_failed"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->videoDownloadFailed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v7

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 366
    :cond_4
    const-string v1, "creative_failed_amount"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->creativeDownloadFailedAmount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v1, "is_available_status"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->isAvailibleResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v1, "is_available_percentage_downloaded"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->isAvailibleDownload:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->isAvailibleTime:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 370
    const-string v1, "is_available_time_since_previous_relevant_fetch"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->isAvailibleTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 372
    :cond_5
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->showAd:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 373
    const-string v1, "show_ad_called"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->showAd:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v7

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    :cond_6
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->displayLatency:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 376
    const-string v1, "display_latency"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->displayLatency:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    :cond_7
    const-string v1, "show_ad_percentage_downloaded"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->showAdDownload:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v1, "show_ad_status"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->showAdResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->showAdTime:Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 381
    const-string v1, "show_ad_time_since_previous_relevant_fetch"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->showAdTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 383
    :cond_8
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->showAdTime:Ljava/lang/Long;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->adRenderTime:Ljava/lang/Long;

    if-eqz v1, :cond_9

    .line 384
    const-string v1, "show_ad_time_till_ad_is_displayed"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->adRenderTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->showAdTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 386
    :cond_9
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->showAdTime:Ljava/lang/Long;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v1, v1, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->startTime:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 387
    const-string v1, "time_from_start_to_show_ad"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->showAdTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v4, v4, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->startTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    :cond_a
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->adClicked:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 390
    const-string v1, "ad_clicked"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->adClicked:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v7

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 392
    :cond_b
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->close:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 393
    const-string v1, "close_clicked"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->close:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v7

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    :cond_c
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->devHide:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 396
    const-string v1, "dev_hidden"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->devHide:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v7

    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 398
    :cond_d
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->back:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    .line 399
    const-string v1, "back_button_pressed"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->back:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    move v2, v7

    :goto_6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    :cond_e
    const-string v1, "video_host"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->creativeHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string v1, "video_path"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->creativePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v1, "ad_unit"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    if-nez v2, :cond_1a

    const-string v2, "unknown"

    :goto_7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v1, "publisher_id"

    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v2, v2, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v1, "connectivity"

    sget-object v2, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/heyzap/internal/Connectivity;->connectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v1, "impression_id"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v1, "mobile_promotion_id"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->mobilePromotionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v1, "video_size"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->videoSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->marketOpenedTime:Ljava/lang/Long;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->adClickedTime:Ljava/lang/Long;

    if-eqz v1, :cond_f

    .line 410
    const-string v1, "time_to_store_open_from_click"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->marketOpenedTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->adClickedTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 412
    :cond_f
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->adRenderTime:Ljava/lang/Long;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    if-eqz v1, :cond_10

    .line 413
    const-string v1, "time_from_fetch_to_impression"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->adRenderTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/heyzap/analytics/Event;->fetchTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 415
    :cond_10
    const-string v1, "nth_ad"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->nthAd:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v1, "id"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->impressionCached:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 418
    const-string v1, "impression_cached"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->impressionCached:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v7

    :goto_8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    :cond_11
    iget-object v1, p0, Lcom/heyzap/analytics/Event;->videoCached:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    .line 422
    const-string v1, "video_cached"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->videoCached:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v7

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    :cond_12
    const-string v1, "ordinal"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->ordinal:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 425
    const-string v1, "network"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->network:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v1, "network_version"

    iget-object v2, p0, Lcom/heyzap/analytics/Event;->networkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    return-object v0

    :cond_13
    move v2, v6

    .line 351
    goto/16 :goto_0

    :cond_14
    move v2, v6

    .line 364
    goto/16 :goto_1

    :cond_15
    move v2, v6

    .line 373
    goto/16 :goto_2

    :cond_16
    move v2, v6

    .line 390
    goto/16 :goto_3

    :cond_17
    move v2, v6

    .line 393
    goto/16 :goto_4

    :cond_18
    move v2, v6

    .line 396
    goto/16 :goto_5

    :cond_19
    move v2, v6

    .line 399
    goto/16 :goto_6

    .line 403
    :cond_1a
    iget-object v2, p0, Lcom/heyzap/analytics/Event;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v2}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_1b
    move v2, v6

    .line 418
    goto :goto_8

    :cond_1c
    move v2, v6

    .line 422
    goto :goto_9
.end method

.method public videoCached(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 98
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->videoCached:Ljava/lang/Boolean;

    .line 99
    return-object p0
.end method

.method public videoDownloadEndTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 277
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->videoDownloadEndTime:Ljava/lang/Long;

    .line 278
    return-object p0
.end method

.method public videoDownloadFailed(Z)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->videoDownloadFailed:Ljava/lang/Boolean;

    .line 124
    return-object p0
.end method

.method public videoDownloadStartTime(J)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 272
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->videoDownloadStartTime:Ljava/lang/Long;

    .line 273
    return-object p0
.end method

.method public videoSize(I)Lcom/heyzap/analytics/Event;
    .locals 1

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/analytics/Event;->videoSize:Ljava/lang/Integer;

    .line 109
    return-object p0
.end method
