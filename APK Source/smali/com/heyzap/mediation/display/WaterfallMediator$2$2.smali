.class Lcom/heyzap/mediation/display/WaterfallMediator$2$2;
.super Ljava/lang/Object;
.source "WaterfallMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator$2;->run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

.field final synthetic val$displayConfig:Lcom/heyzap/mediation/display/DisplayConfig;

.field final synthetic val$pendingNetworks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iput-object p2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$displayConfig:Lcom/heyzap/mediation/display/DisplayConfig;

    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$pendingNetworks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iget-object v0, v0, Lcom/heyzap/mediation/display/WaterfallMediator$2;->val$mediationResultFuture:Lcom/heyzap/internal/SettableFuture;

    iget-object v1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iget-object v1, v1, Lcom/heyzap/mediation/display/WaterfallMediator$2;->this$0:Lcom/heyzap/mediation/display/WaterfallMediator;

    iget-object v2, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$displayConfig:Lcom/heyzap/mediation/display/DisplayConfig;

    iget-object v3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$2;->val$pendingNetworks:Ljava/util/List;

    # invokes: Lcom/heyzap/mediation/display/WaterfallMediator;->reapPending(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;
    invoke-static {v1, v2, v3}, Lcom/heyzap/mediation/display/WaterfallMediator;->access$400(Lcom/heyzap/mediation/display/WaterfallMediator;Lcom/heyzap/mediation/display/DisplayConfig;Ljava/util/List;)Lcom/heyzap/mediation/MediationResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method
