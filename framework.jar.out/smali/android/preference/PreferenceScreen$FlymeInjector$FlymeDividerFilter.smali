.class final Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/ListView$DividerFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDividerFilter"
.end annotation


# instance fields
.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public bottomDeviderEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public dividerEnabled(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->flymeGetFieldRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .local v1, "rootAdapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .local v2, "size":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    return v5

    :cond_1
    instance-of v3, v1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_5

    move-object v0, v1

    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .local v0, "adapter":Landroid/preference/PreferenceGroupAdapter;
    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Landroid/preference/PreferenceScreen$FlymeInjector$FlymeDividerFilter;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-boolean v3, v3, Landroid/preference/PreferenceScreen;->mFlymeShowBottomDivider:Z

    if-eqz v3, :cond_4

    :cond_2
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v2, -0x1

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->isFilterDivider()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_5

    :cond_4
    return v5

    .end local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .end local v2    # "size":I
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
