.class public final Lc/m/x/a/gv/g;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/m/x/a/gv/g$a;,
        Lc/m/x/a/gv/g$b;
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lc/m/x/a/gv/j;

.field final c:Lc/m/x/a/gv/h;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Lc/m/x/a/gv/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/m/x/a/gv/ae",
            "<",
            "Ljava/lang/String;",
            "Lc/m/x/a/gv/s;",
            ">;"
        }
    .end annotation
.end field

.field m:Lc/m/x/a/gv/s;


# direct methods
.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x56

    const/16 v5, 0x46

    const/16 v4, 0x2c

    const/16 v3, 0x20

    const/16 v2, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x45

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x48

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v6

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x43

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x4c

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x53

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x50

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, " #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    sparse-switch v3, :sswitch_data_1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    :goto_b
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_2
    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto/16 :goto_1

    :cond_2
    move v1, v2

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x44

    goto/16 :goto_3

    :cond_4
    move v1, v2

    goto/16 :goto_4

    :cond_5
    move v1, v2

    goto/16 :goto_5

    :cond_6
    move v1, v2

    goto/16 :goto_6

    :cond_7
    move v1, v2

    goto/16 :goto_7

    :cond_8
    move v1, v2

    goto/16 :goto_8

    :cond_9
    move v1, v2

    goto/16 :goto_9

    :cond_a
    move v1, v2

    goto/16 :goto_a

    :sswitch_3
    :try_start_1
    const-string v3, "app"

    goto :goto_b

    :sswitch_4
    const-string v3, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v1

    goto :goto_c

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p3}, Lc/m/x/a/gv/g;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, p2, v3}, Lc/m/x/a/gv/g;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->g:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lc/m/x/a/gv/g;->g:Z

    iput-boolean p1, p0, Lc/m/x/a/gv/g;->h:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/g;->k:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->c()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->m()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->d()V

    goto :goto_0
.end method

.method public static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;ZZ)Lc/m/x/a/gv/s;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    if-nez v0, :cond_0

    new-instance v0, Lc/m/x/a/gv/ae;

    invoke-direct {v0}, Lc/m/x/a/gv/ae;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/ae;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/s;

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lc/m/x/a/gv/s;

    invoke-direct {v0, p1, p0, p2}, Lc/m/x/a/gv/s;-><init>(Ljava/lang/String;Lc/m/x/a/gv/g;Z)V

    iget-object v1, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v1, p1, v0}, Lc/m/x/a/gv/ae;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p0}, Lc/m/x/a/gv/s;->a(Lc/m/x/a/gv/g;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/g;->i:Z

    goto :goto_0
.end method

.method public final a(Lc/m/x/a/gv/d;Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p1, Lc/m/x/a/gv/d;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/ae;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/s;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lc/m/x/a/gv/s;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->h()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/ae;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v3, "  "

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/m/x/a/gv/g;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/m/x/a/gv/g;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/m/x/a/gv/g;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lc/m/x/a/gv/g;->g:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lc/m/x/a/gv/s;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/m/x/a/gv/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc/m/x/a/gv/g;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Lc/m/x/a/gv/g;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v2, "FragmentActivity"

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->f()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iget-object v1, v1, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iget-object v1, v1, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity result fragment index out of range: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iget-object v1, v1, Lc/m/x/a/gv/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/m/x/a/gv/d;

    if-nez p0, :cond_2

    const-string v0, "FragmentActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity result no fragment exists for index: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lc/m/x/a/gv/d;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/g;->finish()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/j;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/g;->c:Lc/m/x/a/gv/h;

    invoke-virtual {v0, p0, v1, v3}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/g;Lc/m/x/a/gv/h;Lc/m/x/a/gv/d;)V

    invoke-virtual {p0}, Lc/m/x/a/gv/g;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/g;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lc/m/x/a/gv/g;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/g$b;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lc/m/x/a/gv/g$b;->e:Lc/m/x/a/gv/ae;

    iput-object v1, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    :cond_1
    if-eqz p1, :cond_2

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lc/m/x/a/gv/g$b;->d:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v2, v1, v0}, Lc/m/x/a/gv/j;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->g()V

    return-void

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {p0}, Lc/m/x/a/gv/g;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lc/m/x/a/gv/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "fragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "class"

    invoke-interface {p3, v5, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/m/x/a/gv/g$a;->a:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v0, :cond_1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, v0}, Lc/m/x/a/gv/d;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eq v2, v4, :cond_6

    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v1, v2}, Lc/m/x/a/gv/j;->a(I)Lc/m/x/a/gv/d;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v1, v3}, Lc/m/x/a/gv/j;->a(Ljava/lang/String;)Lc/m/x/a/gv/d;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v1, v7}, Lc/m/x/a/gv/j;->a(I)Lc/m/x/a/gv/d;

    move-result-object v1

    :cond_4
    sget-boolean v4, Lc/m/x/a/gv/j;->a:Z

    if-eqz v4, :cond_5

    const-string v4, "FragmentActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onCreateView: id=0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v1, :cond_8

    invoke-static {p0, v0}, Lc/m/x/a/gv/d;->instantiate(Landroid/content/Context;Ljava/lang/String;)Lc/m/x/a/gv/d;

    move-result-object v1

    iput-boolean v8, v1, Lc/m/x/a/gv/d;->mFromLayout:Z

    if-eqz v2, :cond_7

    move v4, v2

    :goto_2
    iput v4, v1, Lc/m/x/a/gv/d;->mFragmentId:I

    iput v7, v1, Lc/m/x/a/gv/d;->mContainerId:I

    iput-object v3, v1, Lc/m/x/a/gv/d;->mTag:Ljava/lang/String;

    iput-boolean v8, v1, Lc/m/x/a/gv/d;->mInLayout:Z

    iget-object v4, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iput-object v4, v1, Lc/m/x/a/gv/d;->mFragmentManager:Lc/m/x/a/gv/j;

    iget-object v4, v1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, p0, p3, v4}, Lc/m/x/a/gv/d;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v4, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v4, v1, v8}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;Z)V

    :goto_3
    iget-object v4, v1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    if-nez v4, :cond_b

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " did not create a view."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v1, v5

    goto/16 :goto_1

    :cond_7
    move v4, v7

    goto :goto_2

    :cond_8
    iget-boolean v4, v1, Lc/m/x/a/gv/d;->mInLayout:Z

    if-eqz v4, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Duplicate id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", tag "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or parent id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with another fragment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    iput-boolean v8, v1, Lc/m/x/a/gv/d;->mInLayout:Z

    iget-boolean v4, v1, Lc/m/x/a/gv/d;->mRetaining:Z

    if-nez v4, :cond_a

    iget-object v4, v1, Lc/m/x/a/gv/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v1, p0, p3, v4}, Lc/m/x/a/gv/d;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_a
    iget-object v4, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v4, v1}, Lc/m/x/a/gv/j;->b(Lc/m/x/a/gv/d;)V

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    iget-object v0, v1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    :cond_c
    iget-object v0, v1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_d
    iget-object v0, v1, Lc/m/x/a/gv/d;->mView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/m/x/a/gv/g;->a(Z)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->o()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->h()V

    :cond_0
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/g;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->p()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0, p2}, Lc/m/x/a/gv/j;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0, p2}, Lc/m/x/a/gv/j;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->f()V

    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0, p2}, Lc/m/x/a/gv/j;->b(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final onPause()V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/g;->e:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->j()V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->k()V

    return-void
.end method

.method protected final onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->j()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->c()Z

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->i:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lc/m/x/a/gv/g;->i:Z

    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1, p3}, Lc/m/x/a/gv/g;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_0
    invoke-super {p0, v1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v1, p3}, Lc/m/x/a/gv/j;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/g;->e:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->c()Z

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v8}, Lc/m/x/a/gv/g;->a(Z)V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v0}, Lc/m/x/a/gv/ae;->size()I

    move-result v2

    new-array v3, v2, [Lc/m/x/a/gv/s;

    sub-int v0, v2, v8

    move v4, v0

    :goto_0
    if-ltz v4, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v0, v4}, Lc/m/x/a/gv/ae;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/s;

    aput-object v0, v3, v4

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v5

    move v4, v5

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v5, v3, v0

    iget-boolean v6, v5, Lc/m/x/a/gv/s;->g:Z

    if-eqz v6, :cond_2

    move v4, v8

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lc/m/x/a/gv/s;->h()V

    iget-object v6, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    iget-object v5, v5, Lc/m/x/a/gv/s;->d:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lc/m/x/a/gv/ae;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_3
    if-nez v1, :cond_4

    if-nez v0, :cond_4

    move-object v0, v7

    :goto_4
    return-object v0

    :cond_4
    new-instance v0, Lc/m/x/a/gv/g$b;

    invoke-direct {v0}, Lc/m/x/a/gv/g$b;-><init>()V

    iput-object v7, v0, Lc/m/x/a/gv/g$b;->a:Ljava/lang/Object;

    iput-object v7, v0, Lc/m/x/a/gv/g$b;->b:Ljava/lang/Object;

    iput-object v7, v0, Lc/m/x/a/gv/g$b;->c:Lc/m/x/a/gv/ae;

    iput-object v1, v0, Lc/m/x/a/gv/g$b;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    iput-object v1, v0, Lc/m/x/a/gv/g$b;->e:Lc/m/x/a/gv/ae;

    goto :goto_4

    :cond_5
    move v0, v5

    goto :goto_3
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->e()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected final onStart()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iput-boolean v4, p0, Lc/m/x/a/gv/g;->f:Z

    iput-boolean v4, p0, Lc/m/x/a/gv/g;->g:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->d:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lc/m/x/a/gv/g;->d:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->h()V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->f()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->c()Z

    iget-boolean v0, p0, Lc/m/x/a/gv/g;->k:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lc/m/x/a/gv/g;->k:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->b()V

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lc/m/x/a/gv/g;->j:Z

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->i()V

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v0}, Lc/m/x/a/gv/ae;->size()I

    move-result v1

    new-array v2, v1, [Lc/m/x/a/gv/s;

    sub-int v0, v1, v3

    move v3, v0

    :goto_1
    if-ltz v3, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/g;->l:Lc/m/x/a/gv/ae;

    invoke-virtual {v0, v3}, Lc/m/x/a/gv/ae;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/s;

    aput-object v0, v2, v3

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lc/m/x/a/gv/g;->j:Z

    if-nez v0, :cond_1

    const-string v0, "(root)"

    iget-boolean v1, p0, Lc/m/x/a/gv/g;->k:Z

    invoke-virtual {p0, v0, v1, v4}, Lc/m/x/a/gv/g;->a(Ljava/lang/String;ZZ)Lc/m/x/a/gv/s;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    iget-boolean v0, v0, Lc/m/x/a/gv/s;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/g;->m:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->b()V

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_2
    if-ge v0, v1, :cond_5

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lc/m/x/a/gv/s;->e()V

    invoke-virtual {v3}, Lc/m/x/a/gv/s;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected final onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iput-boolean v1, p0, Lc/m/x/a/gv/g;->f:Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->l()V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
