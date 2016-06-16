.class public Lcom/chartboost/sdk/impl/aw;
.super Lcom/chartboost/sdk/d;
.source "SourceFile"


# static fields
.field private static c:Lcom/chartboost/sdk/impl/aw;


# instance fields
.field protected b:I

.field private d:Lcom/chartboost/sdk/Model/a;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/chartboost/sdk/d;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw;->d:Lcom/chartboost/sdk/Model/a;

    .line 40
    return-void
.end method

.method public static f()Lcom/chartboost/sdk/impl/aw;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/chartboost/sdk/impl/aw;->c:Lcom/chartboost/sdk/impl/aw;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/chartboost/sdk/impl/aw;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/aw;->c:Lcom/chartboost/sdk/impl/aw;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/chartboost/sdk/impl/aw;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/aw;-><init>()V

    sput-object v1, Lcom/chartboost/sdk/impl/aw;->c:Lcom/chartboost/sdk/impl/aw;

    .line 51
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/aw;->c:Lcom/chartboost/sdk/impl/aw;

    return-object v0

    .line 51
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)Lcom/chartboost/sdk/Model/a;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->b:Lcom/chartboost/sdk/Model/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/chartboost/sdk/Model/a;-><init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw;->d:Lcom/chartboost/sdk/Model/a;

    .line 119
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/aw;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/aw;->f:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/aw;->f:Z

    .line 78
    const-string v0, "cells"

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/aw;->b:I

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 83
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/aw;->b:I

    .line 70
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aw;->g()V

    .line 71
    invoke-super {p0, p1}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected c()Lcom/chartboost/sdk/d$a;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/chartboost/sdk/impl/aw$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/aw$1;-><init>(Lcom/chartboost/sdk/impl/aw;)V

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aw;->d:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method protected e(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/more/get"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 102
    sget-object v1, Lcom/chartboost/sdk/Model/b;->c:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 103
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "more-apps"

    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aw;->d:Lcom/chartboost/sdk/Model/a;

    .line 129
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method protected l(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/impl/ba;
    .locals 4

    .prologue
    const-string v3, "cells"

    .line 108
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/more/show"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "location"

    iget-object v2, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "cells"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "cells"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "cells"

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_1
    return-object v0
.end method

.method protected q(Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aw;->d:Lcom/chartboost/sdk/Model/a;

    .line 134
    return-void
.end method
