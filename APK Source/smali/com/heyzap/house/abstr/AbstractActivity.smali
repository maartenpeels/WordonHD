.class public abstract Lcom/heyzap/house/abstr/AbstractActivity;
.super Landroid/app/Activity;
.source "AbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/abstr/AbstractActivity$1;,
        Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    }
.end annotation


# static fields
.field public static final ACTIVITY_ACTION_HIDE:I = 0x2

.field public static final ACTIVITY_ACTION_SHOW:I = 0x1

.field public static final ACTIVITY_INTENT_ACTION_KEY:Ljava/lang/String; = "action"

.field public static final ACTIVITY_INTENT_CONTEXT_KEY:Ljava/lang/String; = "ad_context"

.field public static final ACTIVITY_INTENT_IMPRESSION_KEY:Ljava/lang/String; = "impression_id"

.field public static final ACTIVITY_INTENT_ORIGINAL_ORIENTATION:Ljava/lang/String; = "original_orientation"


# instance fields
.field protected currentAd:Lcom/heyzap/house/model/AdModel;

.field protected currentAdComplete:Ljava/lang/Boolean;

.field protected currentAdImpressionId:Ljava/lang/String;

.field protected currentAdTag:Ljava/lang/String;

.field protected currentAdUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field private originalOrientation:I

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdTag:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdImpressionId:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdComplete:Ljava/lang/Boolean;

    .line 38
    iput v2, p0, Lcom/heyzap/house/abstr/AbstractActivity;->originalOrientation:I

    .line 40
    iput-object v1, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 258
    return-void
.end method

.method private lockCurrentAdOrientation()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 146
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getRequiredOrientation()I

    move-result v0

    .line 147
    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 149
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 160
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 152
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 215
    return-void
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method protected handleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-string v3, "original_orientation"

    const-string v2, "action"

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->finish()V

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->finish()V

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "original_orientation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "original_orientation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->originalOrientation:I

    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    const-string v0, "impression_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdImpressionId:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getDisplayCache()Lcom/heyzap/house/request/DisplayCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/DisplayCache;->get()Lcom/heyzap/house/model/AdModel;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    .line 108
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->isExpired()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    if-eqz v0, :cond_4

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->finish()V

    .line 136
    :cond_5
    :goto_1
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    if-nez v0, :cond_6

    .line 97
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->finish()V

    goto :goto_1

    .line 99
    :cond_6
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->onHide()V

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdTag:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 125
    invoke-direct {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->lockCurrentAdOrientation()V

    .line 127
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->prepare()V

    .line 128
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->setContentView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->onShow()V

    .line 131
    sput-object p0, Lcom/heyzap/house/Manager;->lastActivity:Lcom/heyzap/house/abstr/AbstractActivity;

    goto :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    iget-object v0, v0, Lcom/heyzap/house/model/AdModel;->actionUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/house/abstr/AbstractActivity;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcom/heyzap/house/handler/ClickHandler;

    iget-object v1, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-direct {v0, v1}, Lcom/heyzap/house/handler/ClickHandler;-><init>(Lcom/heyzap/house/model/AdModel;)V

    .line 223
    invoke-virtual {v0, p0, p1, p2}, Lcom/heyzap/house/handler/ClickHandler;->doClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 256
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x1000000

    const/16 v1, 0x400

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 61
    :cond_0
    invoke-static {}, Lcom/heyzap/house/Manager;->isStarted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->finish()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/heyzap/house/abstr/AbstractActivity;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 250
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 251
    return-void
.end method

.method public onHide()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v0, "(HIDE) %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/heyzap/house/model/AdModel;->cleanup(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    sget-object v0, Lcom/heyzap/house/Manager;->SLOW_CLOSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 186
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 189
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 190
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/abstr/AbstractActivity;->finish()V

    .line 197
    invoke-static {}, Lcom/heyzap/house/Manager;->getInstance()Lcom/heyzap/house/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/Manager;->getDisplayCache()Lcom/heyzap/house/request/DisplayCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/DisplayCache;->clear()V

    .line 199
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v1}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onHide(Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/heyzap/house/abstr/AbstractActivity$1;->$SwitchMap$com$heyzap$internal$Constants$AdUnit:[I

    iget-object v1, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAdUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v1}, Lcom/heyzap/internal/Constants$AdUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    :pswitch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/house/Manager;->lastActivity:Lcom/heyzap/house/abstr/AbstractActivity;

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/heyzap/house/abstr/AbstractActivity;->setIntent(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/heyzap/house/abstr/AbstractActivity;->handleIntent(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    return-void
.end method

.method public abstract onPrepared()Ljava/lang/Boolean;
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/model/AdModel;->setHasBeenShown(Z)V

    .line 228
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0, p0}, Lcom/heyzap/house/model/AdModel;->onImpression(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/AdModel;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/request/AdRequest;->getOnStatusListener()Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/house/abstr/AbstractActivity;->currentAd:Lcom/heyzap/house/model/AdModel;

    invoke-virtual {v1}, Lcom/heyzap/house/model/AdModel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onShow(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public abstract prepare()V
.end method
