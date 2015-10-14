.class Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;
.super Ljava/lang/Object;
.source "HeyzapAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->show(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)Lcom/heyzap/mediation/abstr/NetworkAdapter$AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

.field final synthetic val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$2;->val$adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->translate(Lcom/heyzap/internal/Constants$AdUnit;)Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    # invokes: Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->attemptNextFetch(Lcom/heyzap/internal/Constants$AdUnit;)V
    invoke-static {v0, v1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 121
    return-void
.end method
