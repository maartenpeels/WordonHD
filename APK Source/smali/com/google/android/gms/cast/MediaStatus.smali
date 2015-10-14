.class public final Lcom/google/android/gms/cast/MediaStatus;
.super Ljava/lang/Object;


# static fields
.field public static final COMMAND_PAUSE:J = 0x1L

.field public static final COMMAND_SEEK:J = 0x2L

.field public static final COMMAND_SET_VOLUME:J = 0x4L

.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L

.field public static final COMMAND_SKIP_FORWARD:J = 0x10L

.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L

.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I


# instance fields
.field private yA:J

.field private yB:J

.field private yC:D

.field private yD:Z

.field private yn:Lorg/json/JSONObject;

.field private yo:Lcom/google/android/gms/cast/MediaInfo;

.field private yw:J

.field private yx:D

.field private yy:I

.field private yz:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "mediaSessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->yw:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yw:J

    or-int/lit8 v0, v4, 0x1

    :goto_0
    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v5

    :goto_1
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->yy:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/google/android/gms/cast/MediaStatus;->yy:I

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-ne v1, v5, :cond_1

    const-string v1, "idleReason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "idleReason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCELLED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v1, v6

    :goto_2
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->yz:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/google/android/gms/cast/MediaStatus;->yz:I

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->yx:D

    cmpl-double v3, v3, v1

    if-eqz v3, :cond_2

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->yx:D

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_3

    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/eo;->b(D)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->yA:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->yA:J

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->yB:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->yB:J

    or-int/lit8 v0, v0, 0x2

    :cond_4
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_6

    const-string v1, "volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->yC:D

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_5

    iput-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->yC:D

    or-int/lit8 v0, v0, 0x2

    :cond_5
    const-string v2, "muted"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->yD:Z

    if-eq v1, v2, :cond_6

    iput-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->yD:Z

    or-int/lit8 v0, v0, 0x2

    :cond_6
    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->yn:Lorg/json/JSONObject;

    or-int/lit8 v0, v0, 0x2

    :cond_7
    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->yo:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v0, v0, 0x2

    const-string v2, "metadata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x4

    :cond_8
    return v0

    :cond_9
    const-string v2, "PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v1, v6

    goto/16 :goto_1

    :cond_a
    const-string v2, "PAUSED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v1, v7

    goto/16 :goto_1

    :cond_b
    const-string v2, "BUFFERING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v8

    goto/16 :goto_1

    :cond_c
    const-string v2, "INTERRUPTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v1, v7

    goto/16 :goto_2

    :cond_d
    const-string v2, "FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v1, v5

    goto/16 :goto_2

    :cond_e
    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v8

    goto/16 :goto_2

    :cond_f
    move v1, v4

    goto/16 :goto_2

    :cond_10
    move v1, v4

    goto/16 :goto_1

    :cond_11
    move v0, v4

    goto/16 :goto_0
.end method

.method public dC()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yw:J

    return-wide v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yn:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yz:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yo:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yx:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yy:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yA:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yC:D

    return-wide v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 4
    .param p1, "mediaCommand"    # J

    .prologue
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yB:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->yD:Z

    return v0
.end method
