.class Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;
.super Ljava/lang/Object;
.source "UnityadsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->onVideoCompleted(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

.field final synthetic val$skipped:Z


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;Z)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

    iput-boolean p2, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->val$skipped:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;->access$900(Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter;)Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    iget-boolean v1, p0, Lcom/heyzap/sdk/mediation/adapter/UnityadsAdapter$AdListener$1;->val$skipped:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 315
    return-void

    .line 314
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
