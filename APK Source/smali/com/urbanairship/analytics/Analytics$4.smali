.class Lcom/urbanairship/analytics/Analytics$4;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/urbanairship/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$4;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/urbanairship/analytics/Analytics;->b:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$4;->a:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Analytics;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/Analytics;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$4;->a:Lcom/urbanairship/analytics/Analytics;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Analytics;Z)Z

    goto :goto_0
.end method
