.class Lcom/google/android/gms/tagmanager/cg;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final YZ:Ljava/lang/String;

.field private static final Za:Ljava/lang/String;

.field private static final Zb:Ljava/lang/String;

.field private static final Zc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/a;->ae:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->bi:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->YZ:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->bj:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->Za:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->cF:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->Zb:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/b;->cz:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->Zc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/cg;->ID:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/cg;->YZ:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/cg;->Za:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public jX()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/cg;->YZ:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/d$a;

    sget-object v0, Lcom/google/android/gms/tagmanager/cg;->Za:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d$a;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v1

    if-eq p0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x40

    sget-object v1, Lcom/google/android/gms/tagmanager/cg;->Zb:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/d$a;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v1, v2, 0x2

    move v2, v1

    :cond_2
    const/4 v3, 0x1

    sget-object v1, Lcom/google/android/gms/tagmanager/cg;->Zc:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->l(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lO()Ljava/lang/Long;

    move-result-object v3

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    if-gez v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v1, v3

    :cond_5
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lt v2, v1, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_6

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->lT()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v4

    goto :goto_1
.end method
