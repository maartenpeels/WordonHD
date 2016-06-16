.class final Lcom/heyzap/house/request/AdRequest$4;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/request/AdRequest;->startActivity(Landroid/app/Activity;Lcom/heyzap/house/model/AdModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ad:Lcom/heyzap/house/model/AdModel;

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/heyzap/house/model/AdModel;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/heyzap/house/request/AdRequest$4;->val$ad:Lcom/heyzap/house/model/AdModel;

    iput-object p2, p0, Lcom/heyzap/house/request/AdRequest$4;->val$parentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getDisplayCache()Lcom/heyzap/house/request/DisplayCache;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/request/AdRequest$4;->val$ad:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/DisplayCache;->set(Lcom/heyzap/house/model/AdModel;)V

    .line 224
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest$4;->val$ad:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getFormat()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-class v0, Lcom/heyzap/sdk/ads/HeyzapVideoActivity;

    .line 230
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest$4;->val$parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const/high16 v0, 0x24000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    const-string v0, "impression_id"

    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest$4;->val$ad:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v2}, Lcom/heyzap/house/model/AdModel;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v0, "action"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string v0, "original_orientation"

    iget-object v2, p0, Lcom/heyzap/house/request/AdRequest$4;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest$4;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/heyzap/house/request/AdRequest$4;->val$parentActivity:Landroid/app/Activity;

    const v1, 0x10a0002

    const v2, 0x10a0003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 239
    :cond_0
    return-void

    .line 227
    :cond_1
    const-class v0, Lcom/heyzap/sdk/ads/HeyzapInterstitialActivity;

    goto :goto_0
.end method
