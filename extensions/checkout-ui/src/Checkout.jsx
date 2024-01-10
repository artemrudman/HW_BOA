import {
	Banner,
	useApi,
	Checkbox,
	reactExtension,
	Button,
	Link,
	// useApplyAttributeChange,
} from '@shopify/ui-extensions-react/checkout';

export default reactExtension('purchase.checkout.block.render', () => <Extension />);

function Extension() {
	const { lines, shop, checkoutToken } = useApi();
	const isLoggedIn = true; // change this variable 
	const cardInfoWithFlag = lines.current.map((el) => (el = { ...el, isCheckbox: false }));
	const blockTitle = isLoggedIn
		? 'Save your choise into EXTERNAL BAG for future shopping'
		: `Please log in for using EXTERNAL BAG function`;

	const sendDataToServer = async (data) => {
		try {
			const response = await fetch('http://localhost:3000/addSavedCartJson', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/json',
				},
				body: JSON.stringify(data),
			});

			if (!response.ok) {
				throw new Error(`HTTP error! Status: ${response.status}`);
			}

			const responseData = await response.json();
			console.log('Server response:', responseData);
		} catch (error) {
			console.error('Error:', error);
		}
	};

	return (
		<Banner tone="info" title={blockTitle}> 
			{Array.isArray(cardInfoWithFlag) && isLoggedIn ? (
				<>
					{cardInfoWithFlag.map((item) => (
						<Checkbox
							key={item.id}
							onChange={(check) => {
								item.isCheckbox = check;
								console.log(item.isCheckbox);
							}}
						>
							{item.merchandise.title} - {item.quantity + ' pcs'}
						</Checkbox>
					))}
					<Button
						onPress={() => {
							//Check info to sent in DB
							console.log({
								user_id: checkoutToken.current,
								save_cart_data_json: { ...cardInfoWithFlag },
							});
							sendDataToServer({
								user_id: checkoutToken.current,
								save_cart_data_json: { ...cardInfoWithFlag },
							});
						}}
					>
						SAVE
					</Button>
				</>
			) : (
				<Link to={shop.storefrontUrl + 'account/login'}>
					<Button>LOG IN</Button>
				</Link>
			)}
		</Banner>
	);
}

// const applyAttributeChange = useApplyAttributeChange();

// async function onCheckboxChange(isChecked) {
// 	const result = await applyAttributeChange({
// 		key: 'requestedFreeGift',
// 		type: 'updateAttribute',
// 		value: isChecked ? 'yes' : 'no',
// 	});
// 	console.log('applyAttributeChange result', result);
// }
