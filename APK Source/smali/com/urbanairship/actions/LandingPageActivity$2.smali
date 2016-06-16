.class Lcom/urbanairship/actions/LandingPageActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/urbanairship/actions/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/LandingPageActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/LandingPageActivity$2;->b:Lcom/urbanairship/actions/LandingPageActivity;

    iput-object p2, p0, Lcom/urbanairship/actions/LandingPageActivity$2;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/actions/LandingPageActivity$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
