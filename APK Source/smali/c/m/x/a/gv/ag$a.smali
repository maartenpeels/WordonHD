.class public final Lc/m/x/a/gv/ag$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/m/x/a/gv/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/m/x/a/gv/ag$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/m/x/a/gv/ag$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lc/m/x/a/gv/ag$a;->a:Landroid/net/Uri;

    iput-object p4, p0, Lc/m/x/a/gv/ag$a;->d:Ljava/lang/String;

    return-void
.end method
