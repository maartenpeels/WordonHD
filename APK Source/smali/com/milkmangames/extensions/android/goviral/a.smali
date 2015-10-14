.class public final Lcom/milkmangames/extensions/android/goviral/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Lcom/facebook/Session$StatusCallback;

.field public g:Z

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/Session$StatusCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/Session$StatusCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/a;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/a;->f:Lcom/facebook/Session$StatusCallback;

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/a;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/a;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/milkmangames/extensions/android/goviral/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/milkmangames/extensions/android/goviral/a;->g:Z

    iput-object p3, p0, Lcom/milkmangames/extensions/android/goviral/a;->h:Ljava/lang/String;

    return-void
.end method
