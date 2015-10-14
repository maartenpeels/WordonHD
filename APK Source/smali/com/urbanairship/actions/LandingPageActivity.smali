.class public Lcom/urbanairship/actions/LandingPageActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/content/pm/ActivityInfo;

.field private b:Lcom/urbanairship/widget/LandingPageWebView;

.field private c:Ljava/lang/Integer;

.field private d:I

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->c:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/actions/LandingPageActivity;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/actions/LandingPageActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/LandingPageActivity;->c:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "Relaunching activity"

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const-wide/16 v2, 0xc8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/actions/LandingPageActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/urbanairship/actions/LandingPageActivity$2;-><init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private a()Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->a:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->a:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->a:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.support.PARENT_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "Parent activity is not defined for action activity."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_2
    :try_start_0
    const-string v1, "Launching parent activity."

    invoke-static {v1}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Failed to launch parent activity.  Make sure the android.support.PARENT_ACTIVITY metadata value and parentActivityName attribute are set for the landing page activityin the AndroidManifest.xml"

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0
.end method

.method static synthetic b(Lcom/urbanairship/actions/LandingPageActivity;)Lcom/urbanairship/widget/LandingPageWebView;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    return-object v0
.end method

.method static synthetic c(Lcom/urbanairship/actions/LandingPageActivity;)I
    .locals 1

    iget v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->d:I

    return v0
.end method


# virtual methods
.method protected final a(J)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->e:Landroid/os/Handler;

    new-instance v1, Lcom/urbanairship/actions/LandingPageActivity$3;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/LandingPageActivity$3;-><init>(Lcom/urbanairship/actions/LandingPageActivity;)V

    iget-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->f:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading landing page: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    iget v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->d:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/LandingPageWebView;->setBackgroundColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/widget/LandingPageWebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    iput-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->c:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/LandingPageWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCloseButtonClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v7, 0x102000c

    const/16 v6, 0x11

    const/4 v5, -0x2

    const/4 v4, 0x4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Started Action Activity with null intent"

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->b(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->a:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->a:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const-string v2, "com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->d:I

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->f:Ljava/lang/String;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/urbanairship/actions/LandingPageActivity;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "No landing page url to load."

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->a:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->isTaskRoot()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/urbanairship/actions/LandingPageActivity;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/urbanairship/actions/LandingPageActivity;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.urbanairship.action.LANDING_PAGE_VIEW"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->setContentView(I)V

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_4
    invoke-virtual {p0, v7}, Lcom/urbanairship/actions/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/widget/LandingPageWebView;

    iput-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    if-eqz v1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/urbanairship/widget/LandingPageWebView;->setAlpha(F)V

    :goto_3
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    new-instance v2, Lcom/urbanairship/actions/LandingPageActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/actions/LandingPageActivity$1;-><init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2}, Lcom/urbanairship/widget/LandingPageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/urbanairship/widget/LandingPageWebView;

    invoke-direct {v1, p0}, Lcom/urbanairship/widget/LandingPageWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/urbanairship/widget/LandingPageWebView;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/LandingPageActivity;->setContentView(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v1, v4}, Lcom/urbanairship/widget/LandingPageWebView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    const-string v0, "A LandingPageWebView with id android.R.id.primary is not defined in the custom layout.  Unable to show the landing page."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "New intent received for landing page activity"

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/actions/LandingPageActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/LandingPageWebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->b:Lcom/urbanairship/widget/LandingPageWebView;

    invoke-virtual {v0}, Lcom/urbanairship/widget/LandingPageWebView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/analytics/Analytics;->a(Landroid/app/Activity;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/LandingPageActivity;->a(J)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/analytics/Analytics;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
