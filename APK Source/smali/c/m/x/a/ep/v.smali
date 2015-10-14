.class final Lc/m/x/a/ep/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field final synthetic a:Lc/m/x/a/ep/p;


# direct methods
.method constructor <init>(Lc/m/x/a/ep/p;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/ep/v;->a:Lc/m/x/a/ep/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/ep/v;->a:Lc/m/x/a/ep/p;

    invoke-virtual {v0}, Lc/m/x/a/ep/p;->e()Z

    const/4 v0, 0x0

    return-object v0
.end method
