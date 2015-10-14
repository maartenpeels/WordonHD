.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1$1;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;->val$result:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method
