.class public Lcom/heyzap/internal/ContextReference;
.super Ljava/lang/Object;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final activityChangeCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/heyzap/internal/ContextReference;->activityChangeCallbacks:Ljava/util/Set;

    .line 55
    return-void
.end method


# virtual methods
.method public addActivityUpdateListener(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference;->activityChangeCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;

    invoke-direct {v1, p1, p2}, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApp()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public removeActivityUpdateListener(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference;->activityChangeCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/heyzap/internal/ContextReference$UpdateCallbackWrapper;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/internal/ContextReference;->applicationContext:Landroid/content/Context;

    .line 34
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Landroid/app/Activity;

    .line 37
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference;->activity:Landroid/app/Activity;

    if-eq p1, v0, :cond_0

    .line 38
    iput-object p1, p0, Lcom/heyzap/internal/ContextReference;->activity:Landroid/app/Activity;

    .line 40
    iget-object v0, p0, Lcom/heyzap/internal/ContextReference;->activityChangeCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    .line 41
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
