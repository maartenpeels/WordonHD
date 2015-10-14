.class public Lcom/urbanairship/actions/OpenExternalUrlAction;
.super Lcom/urbanairship/actions/Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 2

    sget-object v0, Lcom/urbanairship/actions/Situation;->b:Lcom/urbanairship/actions/Situation;

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->b()Lcom/urbanairship/actions/Situation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UriUtils;->a(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 3

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UriUtils;->a(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/urbanairship/actions/ActionResult;->a(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    return-object v0
.end method
