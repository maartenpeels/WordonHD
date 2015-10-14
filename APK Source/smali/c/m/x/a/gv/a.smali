.class final Lc/m/x/a/gv/a;
.super Lc/m/x/a/gv/q;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/m/x/a/gv/a$a;
    }
.end annotation


# instance fields
.field final a:Lc/m/x/a/gv/j;

.field b:Lc/m/x/a/gv/a$a;

.field c:Lc/m/x/a/gv/a$a;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lc/m/x/a/gv/j;)V
    .locals 1

    invoke-direct {p0}, Lc/m/x/a/gv/q;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/a;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Lc/m/x/a/gv/a;->o:I

    iput-object p1, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v2, "FragmentManager"

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "popFromBackStack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/m/x/a/gv/ac;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v2}, Lc/m/x/a/gv/ac;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Lc/m/x/a/gv/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    invoke-virtual {p0, v6}, Lc/m/x/a/gv/a;->a(I)V

    iget-object v0, p0, Lc/m/x/a/gv/a;->c:Lc/m/x/a/gv/a$a;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget v0, v1, Lc/m/x/a/gv/a$a;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lc/m/x/a/gv/a$a;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->h:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v3}, Lc/m/x/a/gv/j;->c(I)I

    move-result v3

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;II)V

    :cond_1
    :goto_1
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->b:Lc/m/x/a/gv/a$a;

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    if-eqz v0, :cond_2

    iget v2, v1, Lc/m/x/a/gv/a$a;->h:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v3}, Lc/m/x/a/gv/j;->c(I)I

    move-result v3

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;II)V

    :cond_2
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v2, v5

    :goto_2
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    iget v3, v1, Lc/m/x/a/gv/a$a;->g:I

    iput v3, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v3, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    invoke-virtual {v3, v0, v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :pswitch_2
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->g:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    invoke-virtual {v2, v0, v5}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->g:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v3}, Lc/m/x/a/gv/j;->c(I)I

    move-result v3

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->c(Lc/m/x/a/gv/d;II)V

    goto :goto_1

    :pswitch_4
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->h:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v3}, Lc/m/x/a/gv/j;->c(I)I

    move-result v3

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->b(Lc/m/x/a/gv/d;II)V

    goto :goto_1

    :pswitch_5
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->g:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v3}, Lc/m/x/a/gv/j;->c(I)I

    move-result v3

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->e(Lc/m/x/a/gv/d;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->g:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v3}, Lc/m/x/a/gv/j;->c(I)I

    move-result v3

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->d(Lc/m/x/a/gv/d;II)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v1, v1, Lc/m/x/a/gv/j;->n:I

    iget v2, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v2}, Lc/m/x/a/gv/j;->c(I)I

    move-result v2

    iget v3, p0, Lc/m/x/a/gv/a;->j:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lc/m/x/a/gv/j;->a(IIIZ)V

    iget v0, p0, Lc/m/x/a/gv/a;->o:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v1, p0, Lc/m/x/a/gv/a;->o:I

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/j;->b(I)V

    iput v6, p0, Lc/m/x/a/gv/a;->o:I

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method final a(I)V
    .locals 7

    const-string v6, "Bump nesting of "

    const-string v5, " to "

    const-string v4, "FragmentManager"

    iget-boolean v0, p0, Lc/m/x/a/gv/a;->k:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bump nesting in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/d;->mBackStackNesting:I

    add-int/2addr v2, p1

    iput v2, v1, Lc/m/x/a/gv/d;->mBackStackNesting:I

    sget-boolean v1, Lc/m/x/a/gv/j;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting of "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v2, Lc/m/x/a/gv/d;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, v0, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_5

    iget-object v2, v0, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/m/x/a/gv/d;

    iget v2, p0, Lc/m/x/a/gv/d;->mBackStackNesting:I

    add-int/2addr v2, p1

    iput v2, p0, Lc/m/x/a/gv/d;->mBackStackNesting:I

    sget-boolean v2, Lc/m/x/a/gv/j;->a:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting of "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc/m/x/a/gv/d;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lc/m/x/a/gv/a$a;->a:Lc/m/x/a/gv/a$a;

    goto :goto_0
.end method

.method final a(Lc/m/x/a/gv/a$a;)V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    if-nez v0, :cond_0

    iput-object p1, p0, Lc/m/x/a/gv/a;->c:Lc/m/x/a/gv/a$a;

    iput-object p1, p0, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    :goto_0
    iget v0, p0, Lc/m/x/a/gv/a;->e:I

    iput v0, p1, Lc/m/x/a/gv/a$a;->e:I

    iget v0, p0, Lc/m/x/a/gv/a;->f:I

    iput v0, p1, Lc/m/x/a/gv/a$a;->f:I

    iget v0, p0, Lc/m/x/a/gv/a;->g:I

    iput v0, p1, Lc/m/x/a/gv/a$a;->g:I

    iget v0, p0, Lc/m/x/a/gv/a;->h:I

    iput v0, p1, Lc/m/x/a/gv/a$a;->h:I

    iget v0, p0, Lc/m/x/a/gv/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/m/x/a/gv/a;->d:I

    return-void

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/a;->c:Lc/m/x/a/gv/a$a;

    iput-object v0, p1, Lc/m/x/a/gv/a$a;->b:Lc/m/x/a/gv/a$a;

    iget-object v0, p0, Lc/m/x/a/gv/a;->c:Lc/m/x/a/gv/a$a;

    iput-object p1, v0, Lc/m/x/a/gv/a$a;->a:Lc/m/x/a/gv/a$a;

    iput-object p1, p0, Lc/m/x/a/gv/a;->c:Lc/m/x/a/gv/a$a;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc/m/x/a/gv/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 8

    const/4 v6, 0x0

    const-string v7, ": "

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/a;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->o:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/a;->n:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lc/m/x/a/gv/a;->i:I

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lc/m/x/a/gv/a;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Lc/m/x/a/gv/a;->f:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lc/m/x/a/gv/a;->g:I

    if-nez v0, :cond_3

    iget v0, p0, Lc/m/x/a/gv/a;->h:I

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lc/m/x/a/gv/a;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/a;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/a;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v0, p0, Lc/m/x/a/gv/a;->r:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lc/m/x/a/gv/a;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/a;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/a;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    if-eqz v0, :cond_10

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    move-object v2, v1

    move v1, v6

    :goto_0
    if-eqz v2, :cond_10

    iget v3, v2, Lc/m/x/a/gv/a$a;->c:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lc/m/x/a/gv/a$a;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v3, v2, Lc/m/x/a/gv/a$a;->e:I

    if-nez v3, :cond_9

    iget v3, v2, Lc/m/x/a/gv/a$a;->f:I

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lc/m/x/a/gv/a$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lc/m/x/a/gv/a$a;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v3, v2, Lc/m/x/a/gv/a$a;->g:I

    if-nez v3, :cond_b

    iget v3, v2, Lc/m/x/a/gv/a$a;->h:I

    if-eqz v3, :cond_c

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lc/m/x/a/gv/a$a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lc/m/x/a/gv/a$a;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v3, v2, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    move v3, v6

    :goto_2
    iget-object v4, v2, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    const-string v4, "Removed: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    iget-object v4, v2, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_0
    const-string v3, "NULL"

    goto/16 :goto_1

    :pswitch_1
    const-string v3, "ADD"

    goto/16 :goto_1

    :pswitch_2
    const-string v3, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string v3, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string v3, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string v3, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string v3, "ATTACH"

    goto/16 :goto_1

    :cond_d
    if-nez v3, :cond_e

    const-string v4, "Removed:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    iget-object v2, v2, Lc/m/x/a/gv/a$a;->a:Lc/m/x/a/gv/a$a;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "FragmentManager"

    sget-boolean v0, Lc/m/x/a/gv/j;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Run: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lc/m/x/a/gv/a;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lc/m/x/a/gv/a;->o:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v9}, Lc/m/x/a/gv/a;->a(I)V

    iget-object v0, p0, Lc/m/x/a/gv/a;->b:Lc/m/x/a/gv/a$a;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_b

    iget v0, v1, Lc/m/x/a/gv/a$a;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown cmd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lc/m/x/a/gv/a$a;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->e:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    invoke-virtual {v2, v0, v7}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;Z)V

    :cond_2
    :goto_1
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->a:Lc/m/x/a/gv/a$a;

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget-object v2, v2, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    move v2, v7

    move-object v3, v0

    :goto_2
    iget-object v0, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget-object v0, v0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    iget-object v0, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget-object v0, v0, Lc/m/x/a/gv/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/d;

    sget-boolean v4, Lc/m/x/a/gv/j;->a:Z

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OP_REPLACE: adding="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_4

    iget v4, v0, Lc/m/x/a/gv/d;->mContainerId:I

    iget v5, v3, Lc/m/x/a/gv/d;->mContainerId:I

    if-ne v4, v5, :cond_8

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x0

    iput-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_2

    :cond_5
    iget-object v4, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    :cond_6
    iget-object v4, v1, Lc/m/x/a/gv/a$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v1, Lc/m/x/a/gv/a$a;->f:I

    iput v4, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-boolean v4, p0, Lc/m/x/a/gv/a;->k:Z

    if-eqz v4, :cond_7

    iget v4, v0, Lc/m/x/a/gv/d;->mBackStackNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lc/m/x/a/gv/d;->mBackStackNesting:I

    sget-boolean v4, Lc/m/x/a/gv/j;->a:Z

    if-eqz v4, :cond_7

    const-string v4, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lc/m/x/a/gv/d;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v5, p0, Lc/m/x/a/gv/a;->i:I

    iget v6, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v4, v0, v5, v6}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;II)V

    :cond_8
    move-object v0, v3

    goto :goto_3

    :cond_9
    move-object v0, v3

    :cond_a
    if-eqz v0, :cond_2

    iget v2, v1, Lc/m/x/a/gv/a$a;->e:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    invoke-virtual {v2, v0, v7}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->f:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/d;II)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->f:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->b(Lc/m/x/a/gv/d;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->e:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->c(Lc/m/x/a/gv/d;II)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->f:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->d(Lc/m/x/a/gv/d;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, v1, Lc/m/x/a/gv/a$a;->d:Lc/m/x/a/gv/d;

    iget v2, v1, Lc/m/x/a/gv/a$a;->e:I

    iput v2, v0, Lc/m/x/a/gv/d;->mNextAnim:I

    iget-object v2, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v3, p0, Lc/m/x/a/gv/a;->i:I

    iget v4, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v2, v0, v3, v4}, Lc/m/x/a/gv/j;->e(Lc/m/x/a/gv/d;II)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    iget v1, v1, Lc/m/x/a/gv/j;->n:I

    iget v2, p0, Lc/m/x/a/gv/a;->i:I

    iget v3, p0, Lc/m/x/a/gv/a;->j:I

    invoke-virtual {v0, v1, v2, v3, v9}, Lc/m/x/a/gv/j;->a(IIIZ)V

    iget-boolean v0, p0, Lc/m/x/a/gv/a;->k:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lc/m/x/a/gv/a;->a:Lc/m/x/a/gv/j;

    invoke-virtual {v0, p0}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/a;)V

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/m/x/a/gv/a;->o:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/m/x/a/gv/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lc/m/x/a/gv/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/m/x/a/gv/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
