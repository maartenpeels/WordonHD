.class final Lc/m/x/a/gv/j;
.super Lc/m/x/a/gv/i;


# static fields
.field static final A:Landroid/view/animation/Interpolator;

.field static final B:Landroid/view/animation/Interpolator;

.field static final C:Landroid/view/animation/Interpolator;

.field static a:Z

.field static final b:Z

.field static final z:Landroid/view/animation/Interpolator;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field d:[Ljava/lang/Runnable;

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/d;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/d;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/d;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/a;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:Lc/m/x/a/gv/g;

.field p:Lc/m/x/a/gv/h;

.field q:Lc/m/x/a/gv/d;

.field r:Z

.field s:Z

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Landroid/os/Bundle;

.field x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v2, 0x3fc00000    # 1.5f

    sput-boolean v4, Lc/m/x/a/gv/j;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc/m/x/a/gv/j;->b:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lc/m/x/a/gv/j;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lc/m/x/a/gv/j;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lc/m/x/a/gv/j;->B:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lc/m/x/a/gv/j;->C:Landroid/view/animation/Interpolator;

    return-void

    :cond_0
    move v0, v4

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lc/m/x/a/gv/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/m/x/a/gv/j;->n:I

    iput-object v1, p0, Lc/m/x/a/gv/j;->w:Landroid/os/Bundle;

    iput-object v1, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    new-instance v0, Lc/m/x/a/gv/k;

    invoke-direct {v0, p0}, Lc/m/x/a/gv/k;-><init>(Lc/m/x/a/gv/j;)V

    iput-object v0, p0, Lc/m/x/a/gv/j;->y:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(FF)Landroid/view/animation/Animation;
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lc/m/x/a/gv/j;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method private static a(FFFF)Landroid/view/animation/Animation;
    .locals 12

    const-wide/16 v10, 0xdc

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p0

    move v2, p1

    move v3, p0

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Lc/m/x/a/gv/j;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v1, Lc/m/x/a/gv/j;->A:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v9
.end method

.method private a(Lc/m/x/a/gv/d;IZI)Landroid/view/animation/Animation;
    .locals 6

    const v5, 0x3f79999a    # 0.975f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p1, Lc/m/x/a/gv/d;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v0}, Lc/m/x/a/gv/d;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v0, p1, Lc/m/x/a/gv/d;->mNextAnim:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iget v1, p1, Lc/m/x/a/gv/d;->mNextAnim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    if-nez p2, :cond_3

    move-object v0, v4

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_1
    if-gez v0, :cond_7

    move-object v0, v4

    goto :goto_0

    :sswitch_0
    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_6

    const/4 v0, 0x5

    goto :goto_1

    :cond_6
    const/4 v0, 0x6

    goto :goto_1

    :cond_7
    packed-switch v0, :pswitch_data_0

    if-nez p4, :cond_9

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-virtual {v0}, Lc/m/x/a/gv/g;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-virtual {v0}, Lc/m/x/a/gv/g;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_2
    if-nez v0, :cond_8

    move-object v0, v4

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    const/high16 v0, 0x3f900000    # 1.125f

    invoke-static {v0, v2, v3, v2}, Lc/m/x/a/gv/j;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-static {v2, v5, v2, v3}, Lc/m/x/a/gv/j;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-static {v5, v2, v3, v2}, Lc/m/x/a/gv/j;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    const v0, 0x3f89999a    # 1.075f

    invoke-static {v2, v0, v2, v3}, Lc/m/x/a/gv/j;->a(FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-static {v3, v2}, Lc/m/x/a/gv/j;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-static {v2, v3}, Lc/m/x/a/gv/j;->a(FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_8
    move-object v0, v4

    goto :goto_0

    :cond_9
    move v0, p4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Lc/m/x/a/gv/d;
    .locals 7

    const/4 v0, -0x1

    const-string v6, "Fragement no longer exists for key "

    const-string v5, ": index "

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragement no longer exists for key "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fragement no longer exists for key "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method private a(ILc/m/x/a/gv/a;)V
    .locals 4

    const-string v0, "FragmentManager"

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    :cond_3
    sget-boolean v1, Lc/m/x/a/gv/j;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 7

    const-string v6, "Failed dumping state"

    const-string v0, "  "

    const-string v5, "FragmentManager"

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v0, "Activity state:"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/m/x/a/gv/ac;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v5}, Lc/m/x/a/gv/ac;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    const-string v2, "  "

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lc/m/x/a/gv/g;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    throw p1

    :catch_0
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v1, "Failed dumping state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Lc/m/x/a/gv/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "FragmentManager"

    const-string v1, "Failed dumping state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x2002

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1001

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Lc/m/x/a/gv/d;)V
    .locals 2

    iget-object v0, p1, Lc/m/x/a/gv/d;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    :goto_1
    iget-object v0, p1, Lc/m/x/a/gv/d;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    iput-object v0, p1, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method private d(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lc/m/x/a/gv/j;->a(IIIZ)V

    return-void
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/j;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/m/x/a/gv/j;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/j;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lc/m/x/a/gv/d;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_1

    iget v2, v0, Lc/m/x/a/gv/d;->mFragmentId:I

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_3

    iget v2, v0, Lc/m/x/a/gv/d;->mFragmentId:I

    if-eq v2, p1, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lc/m/x/a/gv/d;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lc/m/x/a/gv/d;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_2
    if-ltz v1, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lc/m/x/a/gv/d;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(IIIZ)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Lc/m/x/a/gv/j;->n:I

    if-ne v0, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lc/m/x/a/gv/j;->n:I

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v6, v5

    move v7, v5

    :goto_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/m/x/a/gv/d;

    if-eqz v1, :cond_5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    iget-object v0, v1, Lc/m/x/a/gv/d;->mLoaderManager:Lc/m/x/a/gv/s;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lc/m/x/a/gv/d;->mLoaderManager:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->a()Z

    move-result v0

    or-int/2addr v0, v7

    :goto_2
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v7, v0

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    invoke-virtual {p0}, Lc/m/x/a/gv/j;->b()V

    :cond_4
    iget-boolean v0, p0, Lc/m/x/a/gv/j;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    if-eqz v0, :cond_1

    iget v0, p0, Lc/m/x/a/gv/j;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-virtual {v0}, Lc/m/x/a/gv/g;->a()V

    iput-boolean v5, p0, Lc/m/x/a/gv/j;->r:Z

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_2
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/d;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/d;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, ": "

    const-string v7, "FragmentManager"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lc/m/x/a/gv/m;

    iget-object v0, p1, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    move v1, v5

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    sget-boolean v2, Lc/m/x/a/gv/j;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restoreAllState: re-attaching retained "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p1, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    iget v3, v0, Lc/m/x/a/gv/d;->mIndex:I

    aget-object v2, v2, v3

    iput-object v0, v2, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    iput-object v6, v0, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    iput v5, v0, Lc/m/x/a/gv/d;->mBackStackNesting:I

    iput-boolean v5, v0, Lc/m/x/a/gv/d;->mInLayout:Z

    iput-boolean v5, v0, Lc/m/x/a/gv/d;->mAdded:Z

    iput-object v6, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    iget-object v3, v2, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    iget-object v4, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-virtual {v4}, Lc/m/x/a/gv/g;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v2, v2, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v0, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    move v0, v5

    :goto_2
    iget-object v1, p1, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    iget-object v1, p1, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7

    iget-object v2, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iget-object v3, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    invoke-virtual {v1, v2, v3}, Lc/m/x/a/gv/o;->a(Lc/m/x/a/gv/g;Lc/m/x/a/gv/d;)Lc/m/x/a/gv/d;

    move-result-object v2

    sget-boolean v3, Lc/m/x/a/gv/j;->a:Z

    if-eqz v3, :cond_6

    const-string v3, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: active #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v6, v1, Lc/m/x/a/gv/o;->k:Lc/m/x/a/gv/d;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    :cond_8
    sget-boolean v1, Lc/m/x/a/gv/j;->a:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreAllState: avail #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_d

    move v2, v5

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    iget v1, v0, Lc/m/x/a/gv/d;->mTargetIndex:I

    if-ltz v1, :cond_b

    iget v1, v0, Lc/m/x/a/gv/d;->mTargetIndex:I

    iget-object v3, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    iget-object v1, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    iget v3, v0, Lc/m/x/a/gv/d;->mTargetIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/m/x/a/gv/d;

    iput-object v1, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    :cond_b
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_c
    const-string v1, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Re-attaching retained fragment "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " target no longer exists: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lc/m/x/a/gv/d;->mTargetIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    goto :goto_5

    :cond_d
    iget-object v0, p1, Lc/m/x/a/gv/m;->b:[I

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lc/m/x/a/gv/m;->b:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    move v1, v5

    :goto_6
    iget-object v0, p1, Lc/m/x/a/gv/m;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    iget-object v2, p1, Lc/m/x/a/gv/m;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-nez v0, :cond_e

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No instantiated fragment for index #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lc/m/x/a/gv/m;->b:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    :cond_e
    const/4 v2, 0x1

    iput-boolean v2, v0, Lc/m/x/a/gv/d;->mAdded:Z

    sget-boolean v2, Lc/m/x/a/gv/j;->a:Z

    if-eqz v2, :cond_f

    const-string v2, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restoreAllState: added #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v2, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v2, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_11
    iput-object v6, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    :cond_12
    iget-object v0, p1, Lc/m/x/a/gv/m;->c:[Lc/m/x/a/gv/b;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lc/m/x/a/gv/m;->c:[Lc/m/x/a/gv/b;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    move v0, v5

    :goto_7
    iget-object v1, p1, Lc/m/x/a/gv/m;->c:[Lc/m/x/a/gv/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lc/m/x/a/gv/m;->c:[Lc/m/x/a/gv/b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lc/m/x/a/gv/b;->a(Lc/m/x/a/gv/j;)Lc/m/x/a/gv/a;

    move-result-object v1

    sget-boolean v2, Lc/m/x/a/gv/j;->a:Z

    if-eqz v2, :cond_13

    const-string v2, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restoreAllState: back stack #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lc/m/x/a/gv/a;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lc/m/x/a/gv/ac;

    const-string v3, "FragmentManager"

    invoke-direct {v2, v7}, Lc/m/x/a/gv/ac;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "  "

    invoke-virtual {v1, v2, v3, v5}, Lc/m/x/a/gv/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    :cond_13
    iget-object v2, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v1, Lc/m/x/a/gv/a;->o:I

    if-ltz v2, :cond_14

    iget v2, v1, Lc/m/x/a/gv/a;->o:I

    invoke-direct {p0, v2, v1}, Lc/m/x/a/gv/j;->a(ILc/m/x/a/gv/a;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    iput-object v6, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method final a(Lc/m/x/a/gv/a;)V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lc/m/x/a/gv/j;->q()V

    return-void
.end method

.method public final a(Lc/m/x/a/gv/d;)V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mDeferStart:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->v:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mDeferStart:Z

    iget v2, p0, Lc/m/x/a/gv/j;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    goto :goto_0
.end method

.method public final a(Lc/m/x/a/gv/d;II)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lc/m/x/a/gv/d;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lc/m/x/a/gv/d;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v3

    :goto_0
    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mDetached:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    iget-object v1, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mMenuVisible:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lc/m/x/a/gv/j;->r:Z

    :cond_3
    iput-boolean v5, p1, Lc/m/x/a/gv/d;->mAdded:Z

    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mRemoving:Z

    if-eqz v0, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    :cond_4
    return-void

    :cond_5
    move v0, v5

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method final a(Lc/m/x/a/gv/d;IIIZ)V
    .locals 10

    const/4 v9, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "FragmentManager"

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mDetached:Z

    if-eqz v0, :cond_34

    :cond_0
    if-le p2, v5, :cond_34

    move v0, v5

    :goto_0
    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mRemoving:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lc/m/x/a/gv/d;->mState:I

    if-le v0, v1, :cond_1

    iget v0, p1, Lc/m/x/a/gv/d;->mState:I

    :cond_1
    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mDeferStart:Z

    if-eqz v1, :cond_33

    iget v1, p1, Lc/m/x/a/gv/d;->mState:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_33

    if-le v0, v9, :cond_33

    move v6, v9

    :goto_1
    iget v0, p1, Lc/m/x/a/gv/d;->mState:I

    if-ge v0, v6, :cond_1b

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mFromLayout:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mInLayout:Z

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_2
    iget-object v0, p1, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_3

    iput-object v7, p1, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    iget v2, p1, Lc/m/x/a/gv/d;->mStateAfterAnimating:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    :cond_3
    iget v0, p1, Lc/m/x/a/gv/d;->mState:I

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_3
    move v0, v6

    :cond_5
    :goto_4
    iput v0, p1, Lc/m/x/a/gv/d;->mState:I

    goto :goto_2

    :pswitch_0
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_32

    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-direct {p0, v0, v1}, Lc/m/x/a/gv/j;->a(Landroid/os/Bundle;Ljava/lang/String;)Lc/m/x/a/gv/d;

    move-result-object v0

    iput-object v0, p1, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    iget-object v0, p1, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lc/m/x/a/gv/d;->mTargetRequestCode:I

    :cond_7
    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lc/m/x/a/gv/d;->mUserVisibleHint:Z

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mUserVisibleHint:Z

    if-nez v0, :cond_32

    iput-boolean v5, p1, Lc/m/x/a/gv/d;->mDeferStart:Z

    if-le v6, v9, :cond_32

    move v0, v9

    :goto_5
    iget-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iput-object v1, p1, Lc/m/x/a/gv/d;->mActivity:Lc/m/x/a/gv/g;

    iget-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    iput-object v1, p1, Lc/m/x/a/gv/d;->mParentFragment:Lc/m/x/a/gv/d;

    iget-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    iget-object v1, v1, Lc/m/x/a/gv/d;->mChildFragmentManager:Lc/m/x/a/gv/j;

    :goto_6
    iput-object v1, p1, Lc/m/x/a/gv/d;->mFragmentManager:Lc/m/x/a/gv/j;

    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mCalled:Z

    iget-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-virtual {p1, v1}, Lc/m/x/a/gv/d;->onAttach(Landroid/app/Activity;)V

    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mCalled:Z

    if-nez v1, :cond_9

    new-instance v0, Lc/m/x/a/gv/u;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iget-object v1, v1, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    goto :goto_6

    :cond_9
    iget-object v1, p1, Lc/m/x/a/gv/d;->mParentFragment:Lc/m/x/a/gv/d;

    if-nez v1, :cond_a

    iget-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-static {}, Lc/m/x/a/gv/g;->b()V

    :cond_a
    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mRetaining:Z

    if-nez v1, :cond_b

    iget-object v1, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lc/m/x/a/gv/d;->performCreate(Landroid/os/Bundle;)V

    :cond_b
    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mRetaining:Z

    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mFromLayout:Z

    if-eqz v1, :cond_19

    iget-object v1, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Lc/m/x/a/gv/d;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v7, v2}, Lc/m/x/a/gv/d;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iput-object v1, p1, Lc/m/x/a/gv/d;->mInnerView:Landroid/view/View;

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-static {v1}, Lc/m/x/a/gv/t;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iget-boolean v1, p1, Lc/m/x/a/gv/d;->mHidden:Z

    if-eqz v1, :cond_c

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iget-object v2, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Lc/m/x/a/gv/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move v1, v0

    :goto_7
    if-le v1, v5, :cond_14

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_d

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mFromLayout:Z

    if-nez v0, :cond_12

    iget v0, p1, Lc/m/x/a/gv/d;->mContainerId:I

    if-eqz v0, :cond_31

    iget-object v0, p0, Lc/m/x/a/gv/j;->p:Lc/m/x/a/gv/h;

    iget v2, p1, Lc/m/x/a/gv/d;->mContainerId:I

    invoke-interface {v0, v2}, Lc/m/x/a/gv/h;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    iget-boolean v2, p1, Lc/m/x/a/gv/d;->mRestored:Z

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lc/m/x/a/gv/d;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lc/m/x/a/gv/d;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v6, p1, Lc/m/x/a/gv/d;->mContainerId:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    :cond_e
    :goto_8
    iput-object v0, p1, Lc/m/x/a/gv/d;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Lc/m/x/a/gv/d;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v0, v3}, Lc/m/x/a/gv/d;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iget-object v2, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v2, :cond_1a

    iget-object v2, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iput-object v2, p1, Lc/m/x/a/gv/d;->mInnerView:Landroid/view/View;

    iget-object v2, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-static {v2}, Lc/m/x/a/gv/t;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p3, v5, p4}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IZI)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v3, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_f
    iget-object v2, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHidden:Z

    if-eqz v0, :cond_11

    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iget-object v2, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Lc/m/x/a/gv/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_12
    :goto_9
    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lc/m/x/a/gv/d;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lc/m/x/a/gv/d;->restoreViewState(Landroid/os/Bundle;)V

    :cond_13
    iput-object v7, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_14
    move v0, v1

    :goto_a
    if-le v0, v9, :cond_16

    sget-boolean v1, Lc/m/x/a/gv/j;->a:Z

    if-eqz v1, :cond_15

    const-string v1, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual {p1}, Lc/m/x/a/gv/d;->performStart()V

    :cond_16
    :goto_b
    const/4 v1, 0x4

    if-le v0, v1, :cond_5

    sget-boolean v1, Lc/m/x/a/gv/j;->a:Z

    if-eqz v1, :cond_17

    const-string v1, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESUMED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iput-boolean v5, p1, Lc/m/x/a/gv/d;->mResumed:Z

    invoke-virtual {p1}, Lc/m/x/a/gv/d;->performResume()V

    iput-object v7, p1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, p1, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_4

    :cond_18
    iput-object v7, p1, Lc/m/x/a/gv/d;->mInnerView:Landroid/view/View;

    :cond_19
    move v1, v0

    goto/16 :goto_7

    :cond_1a
    iput-object v7, p1, Lc/m/x/a/gv/d;->mInnerView:Landroid/view/View;

    goto :goto_9

    :cond_1b
    iget v0, p1, Lc/m/x/a/gv/d;->mState:I

    if-le v0, v6, :cond_4

    iget v0, p1, Lc/m/x/a/gv/d;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    :cond_1c
    :goto_c
    :pswitch_1
    if-gtz v6, :cond_4

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->t:Z

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    iput-object v7, p1, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_1d
    iget-object v0, p1, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_28

    iput v6, p1, Lc/m/x/a/gv/d;->mStateAfterAnimating:I

    move v0, v5

    goto/16 :goto_4

    :pswitch_2
    const/4 v0, 0x5

    if-ge v6, v0, :cond_1f

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {p1}, Lc/m/x/a/gv/d;->performPause()V

    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mResumed:Z

    :cond_1f
    :pswitch_3
    const/4 v0, 0x4

    if-ge v6, v0, :cond_21

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-virtual {p1}, Lc/m/x/a/gv/d;->performStop()V

    :cond_21
    :pswitch_4
    if-ge v6, v9, :cond_23

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STOPPED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p1}, Lc/m/x/a/gv/d;->performReallyStop()V

    :cond_23
    :pswitch_5
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1c

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-virtual {v0}, Lc/m/x/a/gv/g;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p1, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_25

    invoke-direct {p0, p1}, Lc/m/x/a/gv/j;->c(Lc/m/x/a/gv/d;)V

    :cond_25
    invoke-virtual {p1}, Lc/m/x/a/gv/d;->performDestroyView()V

    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p1, Lc/m/x/a/gv/d;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    iget v0, p0, Lc/m/x/a/gv/j;->n:I

    if-lez v0, :cond_30

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->t:Z

    if-nez v0, :cond_30

    invoke-direct {p0, p1, p3, v3, p4}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_26

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iput-object v1, p1, Lc/m/x/a/gv/d;->mAnimatingAway:Landroid/view/View;

    iput v6, p1, Lc/m/x/a/gv/d;->mStateAfterAnimating:I

    new-instance v1, Lc/m/x/a/gv/l;

    invoke-direct {v1, p0, p1}, Lc/m/x/a/gv/l;-><init>(Lc/m/x/a/gv/j;Lc/m/x/a/gv/d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_26
    iget-object v0, p1, Lc/m/x/a/gv/d;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_27
    iput-object v7, p1, Lc/m/x/a/gv/d;->mContainer:Landroid/view/ViewGroup;

    iput-object v7, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    iput-object v7, p1, Lc/m/x/a/gv/d;->mInnerView:Landroid/view/View;

    goto/16 :goto_c

    :cond_28
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_29

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mRetaining:Z

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lc/m/x/a/gv/d;->performDestroy()V

    :cond_2a
    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mCalled:Z

    invoke-virtual {p1}, Lc/m/x/a/gv/d;->onDetach()V

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mCalled:Z

    if-nez v0, :cond_2b

    new-instance v0, Lc/m/x/a/gv/u;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    if-nez p5, :cond_4

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mRetaining:Z

    if-nez v0, :cond_2f

    iget v0, p1, Lc/m/x/a/gv/d;->mIndex:I

    if-ltz v0, :cond_2e

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freeing fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    iget v1, p1, Lc/m/x/a/gv/d;->mIndex:I

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    :cond_2d
    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    iget v1, p1, Lc/m/x/a/gv/d;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iget-object v1, p1, Lc/m/x/a/gv/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/g;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/m/x/a/gv/d;->initState()V

    :cond_2e
    move v0, v6

    goto/16 :goto_4

    :cond_2f
    iput-object v7, p1, Lc/m/x/a/gv/d;->mActivity:Lc/m/x/a/gv/g;

    iput-object v7, p1, Lc/m/x/a/gv/d;->mFragmentManager:Lc/m/x/a/gv/j;

    goto/16 :goto_3

    :cond_30
    move-object v0, v7

    goto/16 :goto_d

    :cond_31
    move-object v0, v7

    goto/16 :goto_8

    :cond_32
    move v0, v6

    goto/16 :goto_5

    :pswitch_6
    move v0, v6

    goto/16 :goto_b

    :pswitch_7
    move v0, v6

    goto/16 :goto_a

    :pswitch_8
    move v1, v6

    goto/16 :goto_7

    :cond_33
    move v6, v0

    goto/16 :goto_1

    :cond_34
    move v0, p2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lc/m/x/a/gv/d;Z)V
    .locals 4

    const/4 v2, 0x1

    const-string v3, "FragmentManager"

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    :cond_0
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p1, Lc/m/x/a/gv/d;->mIndex:I

    if-gez v0, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    invoke-virtual {p1, v0, v1}, Lc/m/x/a/gv/d;->setIndex(ILc/m/x/a/gv/d;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Allocated fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mDetached:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    invoke-virtual {p1, v0, v1}, Lc/m/x/a/gv/d;->setIndex(ILc/m/x/a/gv/d;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    iget v1, p1, Lc/m/x/a/gv/d;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p1, Lc/m/x/a/gv/d;->mAdded:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lc/m/x/a/gv/d;->mRemoving:Z

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHasMenu:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mMenuVisible:Z

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lc/m/x/a/gv/j;->r:Z

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/j;->b(Lc/m/x/a/gv/d;)V

    :cond_8
    return-void
.end method

.method public final a(Lc/m/x/a/gv/g;Lc/m/x/a/gv/h;Lc/m/x/a/gv/d;)V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iput-object p2, p0, Lc/m/x/a/gv/j;->p:Lc/m/x/a/gv/h;

    iput-object p3, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const-string v7, ": "

    const-string v6, "  #"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, p2, p3, p4}, Lc/m/x/a/gv/d;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/m/x/a/gv/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    :goto_2
    if-ge v3, v2, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/m/x/a/gv/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/m/x/a/gv/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lc/m/x/a/gv/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    :goto_4
    if-ge v2, v1, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    :goto_5
    if-ge v2, v1, :cond_7

    iget-object v0, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->p:Lc/m/x/a/gv/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mParent="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/j;->n:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->r:Z

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->r:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    iget-object v0, p0, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lc/m/x/a/gv/j;->c()Z

    iget-object v0, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iget-object v0, v0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/a;

    invoke-virtual {v0}, Lc/m/x/a/gv/a;->a()V

    invoke-direct {p0}, Lc/m/x/a/gv/j;->q()V

    move v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v2, v1

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/d;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    move v1, v5

    move-object v2, v0

    move v3, v5

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lc/m/x/a/gv/d;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v2

    move v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v1, v2

    move v2, v3

    :goto_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v3, v5

    :goto_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Lc/m/x/a/gv/d;->onDestroyOptionsMenu()V

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    iput-object v1, p0, Lc/m/x/a/gv/j;->j:Ljava/util/ArrayList;

    return v2

    :cond_6
    move-object v1, v0

    move v2, v5

    goto :goto_1
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/d;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)Lc/m/x/a/gv/d;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/d;->findFragmentByWho(Ljava/lang/String;)Lc/m/x/a/gv/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->k:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    :cond_0
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/d;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(Lc/m/x/a/gv/d;)V
    .locals 6

    const/4 v3, 0x0

    iget v2, p0, Lc/m/x/a/gv/j;->n:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    return-void
.end method

.method public final b(Lc/m/x/a/gv/d;II)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHidden:Z

    if-nez v0, :cond_4

    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mHidden:Z

    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mAdded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mMenuVisible:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lc/m/x/a/gv/j;->r:Z

    :cond_3
    invoke-virtual {p1, v3}, Lc/m/x/a/gv/d;->onHiddenChanged(Z)V

    :cond_4
    return-void
.end method

.method public final b(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/d;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final c(Lc/m/x/a/gv/d;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHidden:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p1, Lc/m/x/a/gv/d;->mHidden:Z

    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, v4, p3}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v0, p1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mAdded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mMenuVisible:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lc/m/x/a/gv/j;->r:Z

    :cond_3
    invoke-virtual {p1, v3}, Lc/m/x/a/gv/d;->onHiddenChanged(Z)V

    :cond_4
    return-void
.end method

.method public final c()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iget-object v1, v1, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v5

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lc/m/x/a/gv/j;->v:Z

    if-eqz v0, :cond_8

    move v2, v5

    move v3, v5

    :goto_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_9

    iget-object v4, v0, Lc/m/x/a/gv/d;->mLoaderManager:Lc/m/x/a/gv/s;

    if-eqz v4, :cond_9

    iget-object v0, v0, Lc/m/x/a/gv/d;->mLoaderManager:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->a()Z

    move-result v0

    or-int/2addr v0, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lc/m/x/a/gv/j;->d:[Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc/m/x/a/gv/j;->d:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v0, :cond_5

    :cond_4
    new-array v1, v0, [Ljava/lang/Runnable;

    iput-object v1, p0, Lc/m/x/a/gv/j;->d:[Ljava/lang/Runnable;

    :cond_5
    iget-object v1, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lc/m/x/a/gv/j;->d:[Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lc/m/x/a/gv/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iget-object v1, v1, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    iget-object v2, p0, Lc/m/x/a/gv/j;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v4, p0, Lc/m/x/a/gv/j;->e:Z

    move v1, v5

    :goto_3
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lc/m/x/a/gv/j;->d:[Ljava/lang/Runnable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v2, p0, Lc/m/x/a/gv/j;->d:[Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    iput-boolean v5, p0, Lc/m/x/a/gv/j;->e:Z

    move v1, v4

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    iput-boolean v5, p0, Lc/m/x/a/gv/j;->v:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/j;->b()V

    :cond_8
    return v1

    :cond_9
    move v0, v3

    goto :goto_2
.end method

.method final d()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc/m/x/a/gv/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lc/m/x/a/gv/d;->mRetainInstance:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lc/m/x/a/gv/d;->mRetaining:Z

    iget-object v3, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    iget v3, v3, Lc/m/x/a/gv/d;->mIndex:I

    :goto_1
    iput v3, v0, Lc/m/x/a/gv/d;->mTargetIndex:I

    sget-boolean v3, Lc/m/x/a/gv/j;->a:Z

    if-eqz v3, :cond_1

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retainNonConfig: keeping retained "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    :cond_4
    return-object v0
.end method

.method public final d(Lc/m/x/a/gv/d;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const-string v3, "FragmentManager"

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mDetached:Z

    if-nez v0, :cond_4

    iput-boolean v2, p1, Lc/m/x/a/gv/d;->mDetached:Z

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mAdded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove from detach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHasMenu:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mMenuVisible:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lc/m/x/a/gv/j;->r:Z

    :cond_3
    iput-boolean v5, p1, Lc/m/x/a/gv/d;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    :cond_4
    return-void
.end method

.method final e()Landroid/os/Parcelable;
    .locals 12

    invoke-virtual {p0}, Lc/m/x/a/gv/j;->c()Z

    sget-boolean v0, Lc/m/x/a/gv/j;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lc/m/x/a/gv/o;

    const/4 v0, 0x0

    const/4 v3, 0x0

    move v4, v0

    :goto_1
    if-ge v3, v1, :cond_11

    iget-object v0, p0, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_f

    iget v4, v0, Lc/m/x/a/gv/d;->mIndex:I

    if-gez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failure saving state: active "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has cleared index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lc/m/x/a/gv/d;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    :cond_3
    const/4 v4, 0x1

    new-instance v5, Lc/m/x/a/gv/o;

    invoke-direct {v5, v0}, Lc/m/x/a/gv/o;-><init>(Lc/m/x/a/gv/d;)V

    aput-object v5, v2, v3

    iget v6, v0, Lc/m/x/a/gv/d;->mState:I

    if-lez v6, :cond_10

    iget-object v6, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    if-nez v6, :cond_10

    const/4 v6, 0x0

    iget-object v7, p0, Lc/m/x/a/gv/j;->w:Landroid/os/Bundle;

    if-nez v7, :cond_4

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lc/m/x/a/gv/j;->w:Landroid/os/Bundle;

    :cond_4
    iget-object v7, p0, Lc/m/x/a/gv/j;->w:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Lc/m/x/a/gv/d;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v7, p0, Lc/m/x/a/gv/j;->w:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v6, p0, Lc/m/x/a/gv/j;->w:Landroid/os/Bundle;

    const/4 v7, 0x0

    iput-object v7, p0, Lc/m/x/a/gv/j;->w:Landroid/os/Bundle;

    :cond_5
    iget-object v7, v0, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-eqz v7, :cond_6

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->c(Lc/m/x/a/gv/d;)V

    :cond_6
    iget-object v7, v0, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v7, :cond_8

    if-nez v6, :cond_7

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v7, "android:view_state"

    iget-object v8, v0, Lc/m/x/a/gv/d;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_8
    iget-boolean v7, v0, Lc/m/x/a/gv/d;->mUserVisibleHint:Z

    if-nez v7, :cond_a

    if-nez v6, :cond_9

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_9
    const-string v7, "android:user_visible_hint"

    iget-boolean v8, v0, Lc/m/x/a/gv/d;->mUserVisibleHint:Z

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    iput-object v6, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    iget-object v6, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    if-eqz v6, :cond_e

    iget-object v6, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    iget v6, v6, Lc/m/x/a/gv/d;->mIndex:I

    if-gez v6, :cond_b

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has target not in fragment manager: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    :cond_b
    iget-object v6, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    if-nez v6, :cond_c

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    :cond_c
    iget-object v6, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    const-string v7, "android:target_state"

    iget-object v8, v0, Lc/m/x/a/gv/d;->mTarget:Lc/m/x/a/gv/d;

    iget v9, v8, Lc/m/x/a/gv/d;->mIndex:I

    if-gez v9, :cond_d

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Fragment "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not currently in the FragmentManager"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    :cond_d
    iget v8, v8, Lc/m/x/a/gv/d;->mIndex:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v6, v0, Lc/m/x/a/gv/d;->mTargetRequestCode:I

    if-eqz v6, :cond_e

    iget-object v6, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    const-string v7, "android:target_req_state"

    iget v8, v0, Lc/m/x/a/gv/d;->mTargetRequestCode:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_e
    :goto_2
    sget-boolean v6, Lc/m/x/a/gv/j;->a:Z

    if-eqz v6, :cond_f

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Saved state of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_10
    iget-object v6, v0, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v6, v5, Lc/m/x/a/gv/o;->j:Landroid/os/Bundle;

    goto :goto_2

    :cond_11
    if-nez v4, :cond_13

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_12

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1a

    new-array v4, v3, [I

    const/4 v0, 0x0

    move v5, v0

    :goto_3
    if-ge v5, v3, :cond_16

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    iget v0, v0, Lc/m/x/a/gv/d;->mIndex:I

    aput v0, v4, v5

    aget v0, v4, v5

    if-gez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failure saving state: active "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has cleared index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->a(Ljava/lang/RuntimeException;)V

    :cond_14
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_15

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveAllState: adding fragment #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_16
    move-object v3, v4

    :goto_4
    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_19

    new-array v1, v4, [Lc/m/x/a/gv/b;

    const/4 v0, 0x0

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_18

    new-instance v6, Lc/m/x/a/gv/b;

    iget-object v0, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/a;

    invoke-direct {v6, v0}, Lc/m/x/a/gv/b;-><init>(Lc/m/x/a/gv/a;)V

    aput-object v6, v1, v5

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_17

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveAllState: adding back stack #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc/m/x/a/gv/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    :cond_18
    move-object v0, v1

    :goto_6
    new-instance v1, Lc/m/x/a/gv/m;

    invoke-direct {v1}, Lc/m/x/a/gv/m;-><init>()V

    iput-object v2, v1, Lc/m/x/a/gv/m;->a:[Lc/m/x/a/gv/o;

    iput-object v3, v1, Lc/m/x/a/gv/m;->b:[I

    iput-object v0, v1, Lc/m/x/a/gv/m;->c:[Lc/m/x/a/gv/b;

    move-object v0, v1

    goto/16 :goto_0

    :cond_19
    move-object v0, v1

    goto :goto_6

    :cond_1a
    move-object v3, v0

    goto :goto_4
.end method

.method public final e(Lc/m/x/a/gv/d;II)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-string v3, "FragmentManager"

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mDetached:Z

    if-eqz v0, :cond_5

    iput-boolean v5, p1, Lc/m/x/a/gv/d;->mDetached:Z

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mAdded:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add from attach: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p1, Lc/m/x/a/gv/d;->mAdded:Z

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mHasMenu:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lc/m/x/a/gv/d;->mMenuVisible:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lc/m/x/a/gv/j;->r:Z

    :cond_4
    iget v2, p0, Lc/m/x/a/gv/j;->n:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;IIIZ)V

    :cond_5
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->s:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    return-void
.end method

.method public final o()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/j;->t:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/j;->c()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/m/x/a/gv/j;->d(I)V

    iput-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    iput-object v1, p0, Lc/m/x/a/gv/j;->p:Lc/m/x/a/gv/h;

    iput-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/m/x/a/gv/d;->performLowMemory()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/j;->q:Lc/m/x/a/gv/d;

    invoke-static {v1, v0}, Lc/m/x/a/gv/ab;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lc/m/x/a/gv/j;->o:Lc/m/x/a/gv/g;

    invoke-static {v1, v0}, Lc/m/x/a/gv/ab;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method
