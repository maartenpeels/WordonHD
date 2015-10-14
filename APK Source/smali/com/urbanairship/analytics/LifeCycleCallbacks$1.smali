.class final Lcom/urbanairship/analytics/LifeCycleCallbacks$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;


# direct methods
.method constructor <init>(Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/analytics/LifeCycleCallbacks$1;->a:Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/LifeCycleCallbacks$1;->a:Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;

    invoke-interface {v0, p1}, Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/analytics/LifeCycleCallbacks$1;->a:Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;

    invoke-interface {v0, p1}, Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;->a(Landroid/app/Activity;)V

    return-void
.end method
