.class public abstract Lcom/urbanairship/analytics/Event;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/urbanairship/analytics/Environment;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/analytics/DefaultEnvironment;

    invoke-direct {v0}, Lcom/urbanairship/analytics/DefaultEnvironment;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/analytics/Event;-><init>(Lcom/urbanairship/analytics/Environment;)V

    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/analytics/Environment;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Event;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Environment;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Event;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/urbanairship/analytics/Event;->d:Lcom/urbanairship/analytics/Environment;

    invoke-virtual {p1}, Lcom/urbanairship/analytics/Environment;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/Event;->b:Ljava/lang/String;

    return-void
.end method

.method private e()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->b()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "event_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/Event;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "time"

    iget-object v3, p0, Lcom/urbanairship/analytics/Event;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error constructing JSON "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " representation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract b()Lorg/json/JSONObject;
.end method

.method final c()Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "type"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/urbanairship/analytics/Event;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time"

    iget-object v3, p0, Lcom/urbanairship/analytics/Event;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "session_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/Event;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_size"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method final d()Lcom/urbanairship/analytics/Environment;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/Event;->d:Lcom/urbanairship/analytics/Environment;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/urbanairship/analytics/Event;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
