.class public final Lcom/google/android/gms/common/images/a$b;
.super Lcom/google/android/gms/common/images/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private Cs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/fb;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Cs:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/a;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/fb;->d(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Cs:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 6

    const/4 v5, 0x0

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    instance-of v1, p1, Lcom/google/android/gms/internal/ez;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ez;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ez;->eB()I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/common/images/a$b;->Co:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/common/images/a$b;->Co:I

    if-ne v1, v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/common/images/a$b;->b(ZZ)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/ex;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v4, p1, Lcom/google/android/gms/internal/ez;

    if-eqz v4, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ez;

    if-eqz p5, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/common/images/a$b;->Cm:Lcom/google/android/gms/common/images/a$a;

    iget-object v4, v4, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    :goto_3
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ez;->e(Landroid/net/Uri;)V

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/gms/common/images/a$b;->Co:I

    :goto_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ez;->L(I)V

    :cond_3
    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ex;

    move-object p0, v0

    const/16 v1, 0xfa

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ex;->startTransition(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move v2, v5

    goto :goto_4

    :cond_6
    move-object v1, p2

    goto :goto_2
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Cs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/a$b;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/a$b;

    if-nez v0, :cond_0

    move v0, v1

    .end local p0    # "this":Lcom/google/android/gms/common/images/a$b;
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "this":Lcom/google/android/gms/common/images/a$b;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/a$b;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/common/images/a$b;->Cs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/google/android/gms/common/images/a$b;
    check-cast p0, Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/google/android/gms/common/images/a$b;->Cs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/fo;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
