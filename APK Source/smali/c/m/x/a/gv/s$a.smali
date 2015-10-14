.class final Lc/m/x/a/gv/s$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/gv/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/m/x/a/gv/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/m/x/a/gv/v$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Lc/m/x/a/gv/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/m/x/a/gv/r$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:Lc/m/x/a/gv/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/m/x/a/gv/v",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Lc/m/x/a/gv/s$a;

.field final synthetic o:Lc/m/x/a/gv/s;


# direct methods
.method public constructor <init>(Lc/m/x/a/gv/s;Lc/m/x/a/gv/r$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/m/x/a/gv/s$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/m/x/a/gv/s$a;->b:Landroid/os/Bundle;

    iput-object p2, p0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->j:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lc/m/x/a/gv/s$a;->h:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->h:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lc/m/x/a/gv/s$a;->h:Z

    sget-boolean v0, Lc/m/x/a/gv/s;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Starting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    iget v1, p0, Lc/m/x/a/gv/s$a;->a:I

    iget-object v2, p0, Lc/m/x/a/gv/s$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lc/m/x/a/gv/r$a;->onCreateLoader(ILandroid/os/Bundle;)Lc/m/x/a/gv/v;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->m:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    iget v1, p0, Lc/m/x/a/gv/s$a;->a:I

    invoke-virtual {v0, v1, p0}, Lc/m/x/a/gv/v;->registerListener(ILc/m/x/a/gv/v$a;)V

    iput-boolean v3, p0, Lc/m/x/a/gv/s$a;->m:Z

    :cond_5
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v0}, Lc/m/x/a/gv/v;->startLoading()V

    goto :goto_0
.end method

.method public final a(Lc/m/x/a/gv/v;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/m/x/a/gv/v",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v3, "LoaderManager"

    sget-boolean v0, Lc/m/x/a/gv/s;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLoadComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->l:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lc/m/x/a/gv/s;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v0, "  Ignoring load complete -- destroyed"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v0, v0, Lc/m/x/a/gv/s;->b:Lc/m/x/a/gv/af;

    iget v1, p0, Lc/m/x/a/gv/s$a;->a:I

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/af;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    sget-boolean v0, Lc/m/x/a/gv/s;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v0, "  Ignoring load complete -- not active"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->n:Lc/m/x/a/gv/s$a;

    if-eqz v0, :cond_5

    sget-boolean v1, Lc/m/x/a/gv/s;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Switching to pending loader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v4, p0, Lc/m/x/a/gv/s$a;->n:Lc/m/x/a/gv/s$a;

    iget-object v1, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v1, v1, Lc/m/x/a/gv/s;->b:Lc/m/x/a/gv/af;

    iget v2, p0, Lc/m/x/a/gv/s$a;->a:I

    invoke-virtual {v1, v2, v4}, Lc/m/x/a/gv/af;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lc/m/x/a/gv/s$a;->c()V

    iget-object v1, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/s;->a(Lc/m/x/a/gv/s$a;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->g:Ljava/lang/Object;

    if-ne v0, p2, :cond_6

    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->e:Z

    if-nez v0, :cond_7

    :cond_6
    iput-object p2, p0, Lc/m/x/a/gv/s$a;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/s$a;->e:Z

    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->h:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lc/m/x/a/gv/s$a;->b(Lc/m/x/a/gv/v;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v0, v0, Lc/m/x/a/gv/s;->c:Lc/m/x/a/gv/af;

    iget v1, p0, Lc/m/x/a/gv/s$a;->a:I

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/af;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/s$a;

    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/m/x/a/gv/s$a;->f:Z

    invoke-virtual {v0}, Lc/m/x/a/gv/s$a;->c()V

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v0, v0, Lc/m/x/a/gv/s;->c:Lc/m/x/a/gv/af;

    iget v1, p0, Lc/m/x/a/gv/s$a;->a:I

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/af;->b(I)V

    :cond_8
    iget-object v0, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v0, v0, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    invoke-virtual {v0}, Lc/m/x/a/gv/s;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v0, v0, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v0, v0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->b()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v5, "  "

    move-object v0, p1

    move-object v1, p0

    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mId="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lc/m/x/a/gv/s$a;->a:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mArgs="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCallbacks="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLoader="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3, p4}, Lc/m/x/a/gv/v;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->e:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->f:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHaveData="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->e:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, "  mDeliveredData="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->f:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mData="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mStarted="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->h:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mReportNextStart="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->k:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mDestroyed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->l:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRetaining="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->i:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mRetainingStarted="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->j:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mListenerRegistered="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Lc/m/x/a/gv/s$a;->m:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->n:Lc/m/x/a/gv/s$a;

    if-eqz v2, :cond_3

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Loader "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lc/m/x/a/gv/s$a;->n:Lc/m/x/a/gv/s$a;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v1, Lc/m/x/a/gv/s$a;->n:Lc/m/x/a/gv/s$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method final b()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lc/m/x/a/gv/s;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p0, Lc/m/x/a/gv/s$a;->h:Z

    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/m/x/a/gv/s$a;->m:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lc/m/x/a/gv/s$a;->m:Z

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v0, p0}, Lc/m/x/a/gv/v;->unregisterListener(Lc/m/x/a/gv/v$a;)V

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v0}, Lc/m/x/a/gv/v;->stopLoading()V

    :cond_1
    return-void
.end method

.method final b(Lc/m/x/a/gv/v;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/m/x/a/gv/v",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v1, v1, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v0, v0, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v0, v0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iget-object v0, v0, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    iget-object v1, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v1, v1, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v1, v1, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    :cond_0
    :try_start_0
    sget-boolean v1, Lc/m/x/a/gv/s;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  onLoadFinished in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Lc/m/x/a/gv/v;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    invoke-interface {v1, p1, p2}, Lc/m/x/a/gv/r$a;->onLoadFinished(Lc/m/x/a/gv/v;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v1, v1, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v1, v1, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v1, v1, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iput-object v0, v1, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/s$a;->f:Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v2, v2, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v2, v2, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v2, v2, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iput-object v0, v2, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    :cond_4
    throw v1
.end method

.method final c()V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "LoaderManager"

    move-object v0, p0

    :goto_0
    sget-boolean v1, Lc/m/x/a/gv/s;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Destroying: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/m/x/a/gv/s$a;->l:Z

    iget-boolean v1, v0, Lc/m/x/a/gv/s$a;->f:Z

    iput-boolean v4, v0, Lc/m/x/a/gv/s$a;->f:Z

    iget-object v2, v0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lc/m/x/a/gv/s$a;->e:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-boolean v1, Lc/m/x/a/gv/s;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Reseting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v1, v1, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v1, v1, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v1, v1, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iget-object v1, v1, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    iget-object v2, v0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v2, v2, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v2, v2, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    const-string v3, "onLoaderReset"

    iput-object v3, v2, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    :goto_1
    :try_start_0
    iget-object v2, v0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    iget-object v3, v0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-interface {v2, v3}, Lc/m/x/a/gv/r$a;->onLoaderReset(Lc/m/x/a/gv/v;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v2, v2, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v2, v2, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v2, v2, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iput-object v1, v2, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    :cond_2
    iput-object v5, v0, Lc/m/x/a/gv/s$a;->c:Lc/m/x/a/gv/r$a;

    iput-object v5, v0, Lc/m/x/a/gv/s$a;->g:Ljava/lang/Object;

    iput-boolean v4, v0, Lc/m/x/a/gv/s$a;->e:Z

    iget-object v1, v0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lc/m/x/a/gv/s$a;->m:Z

    if-eqz v1, :cond_3

    iput-boolean v4, v0, Lc/m/x/a/gv/s$a;->m:Z

    iget-object v1, v0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v1, v0}, Lc/m/x/a/gv/v;->unregisterListener(Lc/m/x/a/gv/v$a;)V

    :cond_3
    iget-object v1, v0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-virtual {v1}, Lc/m/x/a/gv/v;->reset()V

    :cond_4
    iget-object v1, v0, Lc/m/x/a/gv/s$a;->n:Lc/m/x/a/gv/s$a;

    if-eqz v1, :cond_6

    iget-object v0, v0, Lc/m/x/a/gv/s$a;->n:Lc/m/x/a/gv/s$a;

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, v0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v3, v3, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lc/m/x/a/gv/s$a;->o:Lc/m/x/a/gv/s;

    iget-object v0, v0, Lc/m/x/a/gv/s;->e:Lc/m/x/a/gv/g;

    iget-object v0, v0, Lc/m/x/a/gv/g;->b:Lc/m/x/a/gv/j;

    iput-object v1, v0, Lc/m/x/a/gv/j;->u:Ljava/lang/String;

    :cond_5
    throw v2

    :cond_6
    return-void

    :cond_7
    move-object v1, v5

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/m/x/a/gv/s$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/m/x/a/gv/s$a;->d:Lc/m/x/a/gv/v;

    invoke-static {v1, v0}, Lc/m/x/a/gv/ab;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
