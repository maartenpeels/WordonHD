.class public Lcom/chartboost/sdk/impl/cr;
.super Lcom/chartboost/sdk/impl/cq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/cr$a;
    }
.end annotation


# static fields
.field private static g:Lcom/chartboost/sdk/impl/di;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chartboost/sdk/impl/di",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field final a:[B

.field final b:[C

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field final d:Lcom/chartboost/sdk/impl/cs;

.field private final e:Lcom/chartboost/sdk/impl/cr$a;

.field private final f:Lcom/chartboost/sdk/impl/cr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/chartboost/sdk/impl/cr$1;

    const/16 v1, 0x280

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/cr$1;-><init>(I)V

    sput-object v0, Lcom/chartboost/sdk/impl/cr;->g:Lcom/chartboost/sdk/impl/di;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x4000

    .line 32
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/cq;-><init>()V

    .line 223
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cr;->a:[B

    .line 224
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cr;->b:[C

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cr;->c:Ljava/util/List;

    .line 226
    new-instance v0, Lcom/chartboost/sdk/impl/cs;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/cs;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cr;->d:Lcom/chartboost/sdk/impl/cs;

    .line 231
    new-instance v0, Lcom/chartboost/sdk/impl/cr$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/cr$a;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    .line 232
    new-instance v0, Lcom/chartboost/sdk/impl/cr$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/cr$a;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    .line 33
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cr;->d()V

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cr$a;->b()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    const/4 v0, -0x1

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/cr;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 127
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cr;->b(I)[B

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/cr$a;->c(I)I

    move-result v3

    .line 129
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    add-int/2addr v1, v3

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return v1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/cr$a;->a(I)V

    .line 51
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cr$a;->b()I

    move-result v0

    return v0
.end method

.method b(I)[B
    .locals 1

    .prologue
    .line 113
    if-gez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->a:[B

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    move-object v0, p0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cr$a;->a()V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cr$a;->a()V

    .line 40
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cr;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 41
    sget-object v1, Lcom/chartboost/sdk/impl/cr;->g:Lcom/chartboost/sdk/impl/di;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/cr;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/di;->b(Ljava/lang/Object;)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    return-void
.end method

.method e()V
    .locals 3

    .prologue
    const/16 v2, 0x4000

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cr$a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/cr$a;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    iget v0, v0, Lcom/chartboost/sdk/impl/cr$a;->b:I

    if-ne v0, v2, :cond_0

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cr$a;->d()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cr$a;->a(Lcom/chartboost/sdk/impl/cr$a;)V

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    iget v0, v0, Lcom/chartboost/sdk/impl/cr$a;->b:I

    if-lt v0, v2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->c:Ljava/util/List;

    sget-object v1, Lcom/chartboost/sdk/impl/cr;->g:Lcom/chartboost/sdk/impl/di;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/di;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/cr$a;->d()V

    .line 105
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/cr;->f:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cr$a;->a(Lcom/chartboost/sdk/impl/cr$a;)V

    goto :goto_0
.end method

.method f()[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    iget v0, v0, Lcom/chartboost/sdk/impl/cr$a;->a:I

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/cr;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cr;->f()[B

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/cr$a;->c()I

    move-result v1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 85
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cr;->e()V

    .line 86
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 67
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/cr;->write([BII)V

    .line 68
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 71
    :goto_0
    if-lez p3, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cr;->f()[B

    move-result-object v0

    .line 73
    array-length v1, v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    iget v2, v2, Lcom/chartboost/sdk/impl/cr$a;->b:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    iget v2, v2, Lcom/chartboost/sdk/impl/cr$a;->b:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/cr;->e:Lcom/chartboost/sdk/impl/cr$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/cr$a;->b(I)V

    .line 76
    sub-int/2addr p3, v1

    .line 77
    add-int/2addr p2, v1

    .line 78
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/cr;->e()V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
