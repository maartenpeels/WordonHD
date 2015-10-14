.class Lcom/urbanairship/actions/LandingPageAction$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/urbanairship/actions/LandingPageAction;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/LandingPageAction;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/LandingPageAction$1;->b:Lcom/urbanairship/actions/LandingPageAction;

    iput-object p2, p0, Lcom/urbanairship/actions/LandingPageAction$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/urbanairship/widget/UAWebView;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/urbanairship/actions/LandingPageAction$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
