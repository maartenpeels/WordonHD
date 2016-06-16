.class Lcom/urbanairship/analytics/LifeCycleCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;)V
    .locals 1

    new-instance v0, Lcom/urbanairship/analytics/LifeCycleCallbacks$1;

    invoke-direct {v0, p1}, Lcom/urbanairship/analytics/LifeCycleCallbacks$1;-><init>(Lcom/urbanairship/analytics/LifeCycleCallbacks$Callback;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
