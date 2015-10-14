.class public final Lc/m/x/a/iab/c;
.super Ljava/lang/Exception;


# instance fields
.field a:Lc/m/x/a/iab/p;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lc/m/x/a/iab/p;

    invoke-direct {v0, p1, p2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lc/m/x/a/iab/c;-><init>(Lc/m/x/a/iab/p;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lc/m/x/a/iab/p;

    invoke-direct {v0, p1, p2}, Lc/m/x/a/iab/p;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lc/m/x/a/iab/c;-><init>(Lc/m/x/a/iab/p;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lc/m/x/a/iab/p;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/m/x/a/iab/c;-><init>(Lc/m/x/a/iab/p;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lc/m/x/a/iab/p;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p1, Lc/m/x/a/iab/p;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lc/m/x/a/iab/c;->a:Lc/m/x/a/iab/p;

    return-void
.end method


# virtual methods
.method public final a()Lc/m/x/a/iab/p;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/iab/c;->a:Lc/m/x/a/iab/p;

    return-object v0
.end method
