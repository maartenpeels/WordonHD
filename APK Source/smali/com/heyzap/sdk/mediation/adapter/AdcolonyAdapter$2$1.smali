.class Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2$1;
.super Ljava/lang/Object;
.source "AdcolonyAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2$1;->this$1:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;

    # invokes: Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->getContextRef()Lcom/heyzap/internal/ContextReference;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;->access$1400(Lcom/heyzap/sdk/mediation/adapter/AdcolonyAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 169
    return-void
.end method
