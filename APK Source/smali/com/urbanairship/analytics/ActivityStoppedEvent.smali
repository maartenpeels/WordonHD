.class Lcom/urbanairship/analytics/ActivityStoppedEvent;
.super Lcom/urbanairship/analytics/Event;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityStoppedEvent;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityStoppedEvent;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    const-string v0, "activity_stopped"

    return-object v0
.end method

.method final b()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/analytics/ActivityStoppedEvent;->d()Lcom/urbanairship/analytics/Environment;

    move-result-object v1

    :try_start_0
    const-string v2, "class_name"

    iget-object v3, p0, Lcom/urbanairship/analytics/ActivityStoppedEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "session_id"

    invoke-virtual {v1}, Lcom/urbanairship/analytics/Environment;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "Error constructing JSON data for activity_stopped"

    invoke-static {v1}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
