﻿using Microsoft.AspNetCore.Mvc.Rendering;
using Rapid.MicroApp.Core.Common;
using Rapid.MicroApp.Core.Utility;
using Rapid.MicroApp.ViewModel.Security;

namespace Rapid.MicroApp.Core.Security.Manager
{
    public interface IApplicationRoleManager
    {
        Task<List<ApplicationRoleViewModel>> GetApplicationRolesAsync();

        Task<ApplicationRoleViewModel> GetApplicationRoleAsync(string key);

        Task<List<ApplicationRoleViewModel>> GetApplicationRolesAsync(bool isActive, CancellationToken cancellationToken = default);

        Task<ApplicationRoleEditViewModel> GetApplicationRoleForEditAsync(string key);

        Task<AppResult> UpdateApplicationRoleAsync(ApplicationRoleEditViewModel model);

        Task<SearchResult<IEnumerable<ApplicationRoleViewModel>>> GetApplicationRolesSearchResultAsync(SearchModel searchModel, bool pagination);

        Task<DefaultPageViewModel<ApplicationRoleCreateViewModel, SearchModel, SearchResult<IEnumerable<ApplicationRoleViewModel>>>> GetApplicationRolesDefaultPageViewModelAsync(SearchModel searchModel);

        Task<DefaultPageViewModel<ApplicationRoleCreateViewModel, SearchModel, SearchResult<IEnumerable<ApplicationRoleViewModel>>>> GetApplicationRolesDefaultPageViewModelAsync(SearchModel searchModel, bool pagination);

        Task<AppResult> CreateApplicationRoleAsync(ApplicationRoleCreateViewModel model, CancellationToken cancellationToken = default);

        Task<AppResult> DeleteApplicationRoleAsync(string key, CancellationToken cancellationToken = default);

        Task<List<SelectListItem>> GetApplicationRoleDropDownViewModelAsync(bool isActive);

    }
}
