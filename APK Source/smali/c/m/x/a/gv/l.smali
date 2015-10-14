.class final Lc/m/x/a/gv/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lc/m/x/a/gv/d;

.field final synthetic b:Lc/m/x/a/gv/j;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/j;Lc/m/x/a/gv/d;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/l;->b:Lc/m/x/a/gv/j;

    iput-object p2, p0, Lc/m/x/a/gv/l;->a:Lc/m/x/a/gv/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/l;->a:Lc/m/x/a/gv/d;

    iget-object v0, v0, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/l;->a:Lc/m/x/a/gv/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    iget-object v0, p0, Lc/m/x/a/gv/l;->b:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/l;->a:Lc/m/x/a/gv/d;

    iget-object v2, p0, Lc/m/x/a/gv/l;->a:Lc/m/x/a/gv/d;

    iget v2, v2, Lc/m/x/a/gv/d;->mStateAfterAnimating:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
