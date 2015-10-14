.class final Lc/m/x/a/ep/t;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/ep/am;


# instance fields
.field final synthetic a:Lc/m/x/a/ep/p;


# direct methods
.method constructor <init>(Lc/m/x/a/ep/p;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/t;->a:Lc/m/x/a/ep/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lc/m/x/a/ep/p;->e:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lc/m/x/a/ep/p;->e:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lc/m/x/a/ep/p;->e:Z

    return-void
.end method

.method public final d()V
    .locals 2

    const-string v0, "[PushNotifyEx]"

    const-string v1, "Pause."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "[PushNotifyEx]"

    const-string v1, "Destroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
