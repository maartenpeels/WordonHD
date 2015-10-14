.class public Lcom/urbanairship/actions/ActionService;
.super Landroid/app/Service;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/urbanairship/actions/ActionRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/actions/ActionRunner;->a()Lcom/urbanairship/actions/ActionRunner;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/ActionService;-><init>(Lcom/urbanairship/actions/ActionRunner;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/actions/ActionRunner;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/urbanairship/actions/ActionService;->a:I

    iput v0, p0, Lcom/urbanairship/actions/ActionService;->b:I

    iput-object p1, p0, Lcom/urbanairship/actions/ActionService;->c:Lcom/urbanairship/actions/ActionRunner;

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/actions/ActionService;)I
    .locals 2

    iget v0, p0, Lcom/urbanairship/actions/ActionService;->b:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/urbanairship/actions/ActionService;->b:I

    return v0
.end method

.method public static a(Landroid/os/Bundle;Lcom/urbanairship/actions/Situation;)V
    .locals 4

    const-string v0, "com.urbanairship.actions"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "No actions to run in payload."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.urbanairship.actionservice.RUN_ACTIONS_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/urbanairship/actions/ActionService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "com.urbanairship.actionservice.ACTIONS_PAYLOAD_EXTRA"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.urbanairship.actionservice.SITUATION_EXTRA"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static synthetic b(Lcom/urbanairship/actions/ActionService;)I
    .locals 1

    iget v0, p0, Lcom/urbanairship/actions/ActionService;->b:I

    return v0
.end method

.method static synthetic c(Lcom/urbanairship/actions/ActionService;)I
    .locals 1

    iget v0, p0, Lcom/urbanairship/actions/ActionService;->a:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/urbanairship/Autopilot;->b(Landroid/app/Application;)V

    iput p3, p0, Lcom/urbanairship/actions/ActionService;->a:I

    if-eqz p1, :cond_0

    const-string v0, "com.urbanairship.actionservice.RUN_ACTIONS_ACTION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.urbanairship.actionservice.ACTIONS_PAYLOAD_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "com.urbanairship.actionservice.SITUATION_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/Situation;

    if-nez v0, :cond_2

    const-string v0, "Unable to run actions with a null situation"

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/urbanairship/actions/ActionService;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/urbanairship/actions/ActionService;->stopSelf(I)V

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "No actions to run."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lcom/urbanairship/util/JSONUtils;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/urbanairship/actions/ActionArguments;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/urbanairship/actions/ActionArguments;-><init>(Lcom/urbanairship/actions/Situation;Ljava/lang/Object;)V

    iget v5, p0, Lcom/urbanairship/actions/ActionService;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/urbanairship/actions/ActionService;->b:I

    iget-object v5, p0, Lcom/urbanairship/actions/ActionService;->c:Lcom/urbanairship/actions/ActionRunner;

    new-instance v6, Lcom/urbanairship/actions/ActionService$1;

    invoke-direct {v6, p0}, Lcom/urbanairship/actions/ActionService$1;-><init>(Lcom/urbanairship/actions/ActionService;)V

    invoke-virtual {v5, v1, v4, v6}, Lcom/urbanairship/actions/ActionRunner;->a(Ljava/lang/String;Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionCompletionCallback;)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid actions payload: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
