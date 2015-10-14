.class Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;
.super Lcom/heyzap/internal/RetryManager$RetryableTask;
.source "MediatedDisplayConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->fetchNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

.field final synthetic val$displayConfigFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    iput-object p2, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->val$displayConfigFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Lcom/heyzap/internal/RetryManager$RetryableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    # getter for: Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->contextRef:Lcom/heyzap/internal/ContextReference;
    invoke-static {v0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->access$000(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://med.heyzap.com/mediate"

    iget-object v2, p0, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;->this$0:Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;

    # invokes: Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->getParams()Lcom/heyzap/http/RequestParams;
    invoke-static {v2}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;->access$100(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader;)Lcom/heyzap/http/RequestParams;

    move-result-object v2

    new-instance v3, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;

    invoke-direct {v3, p0}, Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1$1;-><init>(Lcom/heyzap/mediation/display/MediatedDisplayConfigLoader$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/heyzap/internal/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 75
    return-void
.end method
