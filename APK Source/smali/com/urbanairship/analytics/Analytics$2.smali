.class Lcom/urbanairship/analytics/Analytics$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;


# instance fields
.field final synthetic a:Lcom/urbanairship/analytics/Analytics;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/Analytics;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/Analytics$2;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$2;->a:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/ActivityStoppedEvent;

    invoke-direct {v1, p1}, Lcom/urbanairship/analytics/ActivityStoppedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$2;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->e(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/ActivityMonitor;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/analytics/ActivityMonitor$Source;->b:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    invoke-virtual {v0, p1, v1}, Lcom/urbanairship/analytics/ActivityMonitor;->b(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$2;->a:Lcom/urbanairship/analytics/Analytics;

    new-instance v1, Lcom/urbanairship/analytics/ActivityStartedEvent;

    invoke-direct {v1, p1}, Lcom/urbanairship/analytics/ActivityStartedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/analytics/Analytics;->a(Lcom/urbanairship/analytics/Event;)V

    iget-object v0, p0, Lcom/urbanairship/analytics/Analytics$2;->a:Lcom/urbanairship/analytics/Analytics;

    invoke-static {v0}, Lcom/urbanairship/analytics/Analytics;->e(Lcom/urbanairship/analytics/Analytics;)Lcom/urbanairship/analytics/ActivityMonitor;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/analytics/ActivityMonitor$Source;->b:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    invoke-virtual {v0, p1, v1}, Lcom/urbanairship/analytics/ActivityMonitor;->a(Landroid/app/Activity;Lcom/urbanairship/analytics/ActivityMonitor$Source;)V

    return-void
.end method
